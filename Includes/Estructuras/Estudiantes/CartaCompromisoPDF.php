
<?php
require('../../../assets/FPDF/fpdf.php');



class PDF extends FPDF
{
    private $resultado1;
    
    function CellFit($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='', $scale=false, $force=true)
    {
        //Get string width
        $str_width=$this->GetStringWidth($txt);

        //Calculate ratio to fit cell
        if($w==0)
            $w = $this->w-$this->rMargin-$this->x;
        $ratio = ($w-$this->cMargin*2)/$str_width;

        $fit = ($ratio < 1 || ($ratio > 1 && $force));
        if ($fit)
        {
            if ($scale)
            {
                //Calculate horizontal scaling
                $horiz_scale=$ratio*100.0;
                //Set horizontal scaling
                $this->_out(sprintf('BT %.2F Tz ET',$horiz_scale));
            }
            else
            {
                //Calculate character spacing in points
                $char_space=($w-$this->cMargin*2-$str_width)/max($this->MBGetStringLength($txt)-1,1)*$this->k;
                //Set character spacing
                $this->_out(sprintf('BT %.2F Tc ET',$char_space));
            }
            //Override user alignment (since text will fill up cell)
            $align='';
        }

        //Pass on to Cell method
        $this->Cell($w,$h,$txt,$border,$ln,$align,$fill,$link);

        //Reset character spacing/horizontal scaling
        if ($fit)
            $this->_out('BT '.($scale ? '100 Tz' : '0 Tc').' ET');
    }

    //Cell with horizontal scaling only if necessary
    function CellFitScale($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
    {
        $this->CellFit($w,$h,$txt,$border,$ln,$align,$fill,$link,true,false);
    }

    //Cell with horizontal scaling always
    function CellFitScaleForce($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
    {
        $this->CellFit($w,$h,$txt,$border,$ln,$align,$fill,$link,true,true);
    }

    //Cell with character spacing only if necessary
    function CellFitSpace($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
    {
        $this->CellFit($w,$h,$txt,$border,$ln,$align,$fill,$link,false,false);
    }

    //Cell with character spacing always
    function CellFitSpaceForce($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
    {
        //Same as calling CellFit directly
        $this->CellFit($w,$h,$txt,$border,$ln,$align,$fill,$link,false,true);
    }

    //Patch to also work with CJK double-byte text
    function MBGetStringLength($s)
    {
        if($this->CurrentFont['type']=='Type0')
        {
            $len = 0;
            $nbbytes = strlen($s);
            for ($i = 0; $i < $nbbytes; $i++)
            {
                if (ord($s[$i])<128)
                    $len++;
                else
                {
                    $len++;
                    $i++;
                }
            }
            return $len;
        }
        else
            return strlen($s);
    }

    function Header()
{  include('../../Database/db_Estudiantes/Conexion_Estudiante.php');
    include('../../Database/db_PDF/conexion_db_pdf.php');
    include'../../Database/user_session.php';
    include'../../Database/user.php';
    

$userSession = new UserSession();
$user = new User();
$user->setUser($userSession->getCurrentUser());
$us=$userSession->getCurrentUser();
$idCom = $_GET['idCom']; 

    $objData = new  Database();
    
    $sth = $objData->prepare(" SELECT Fecha from cartacompromiso 
    where idCartaCom=(select MAX(idCartaCom) from cartacompromiso,estudiantes,usuarios
    where idusuario=fk_idUsuario_Est and usuario=:us )") ;

    $sth->execute(['us' => $us]);

    $sth2 = $objData->prepare("SELECT CicloNombre FROM ciclos, estudiantes,usuarios
    where fk_idCiclo_Est=idciclo and fk_idUsuario_Est=idUsuario and usuario= :us");

    $sth2->execute(['us' => $us]);

     
   
    $sth3 = $objData->prepare("SELECT concat(PrimerNombre,' ', SegundoNombre,' ', apellido_paterno,' 
    ',apellido_materno,' ') As 'estudiante' 
    FROM estudiantes,usuarios where fk_idUsuario_Est = idusuario and usuario=:us") ;
       

    $sth3->execute(['us' => $us]);

    $sth4 = $objData->prepare(" SELECT Institucion FROM instituciones, estudiantes, proyectos, usuarios, proyecto_estudiante
    where idInstitucion = fk_idInstitucion 
    and fk_idproyectos_pe=idproyectos and fk_idestudiante_pe =idestudiante 
    and  idestudiante=idusuario and usuario =:us");

    $sth4->execute(['us' => $us]);


    $sth5 = $objData->prepare(" SELECT Dependencia
    FROM dep_proyecto, proyectos, dependencias, estudiantes, usuarios, proyecto_estudiante
    where fk_dep_dp = idDependencia and fk_pry_dp= idProyectos and fk_idProyectos_pe = idProyectos 
    and fk_idEstudiante_pe = idEstudiante and fk_idUsuario_est = idusuario and usuario = :us");

    $sth5->execute(['us' => $us]);

    
    $sth6 = $objData->prepare("SELECT concat(PrimerNombre,' ', SegundoNombre,' ', apellido_paterno,' ',apellido_materno,' ') As 'te' FROM text_estudiante,tutor_externo,estudiantes,usuarios
    Where fk_idUsuario_tex=idUsuario and fk_idTutorExterno=idTutorExterno and fk_idEstudiante = idEstudiante
    and idEstudiante = (select idEstudiante from estudiantes, usuarios where fk_idUsuario_Est = idusuario and usuario=:us)") ;
       

    $sth6->execute(['us' => $us]);


    
    // Logo
    $this->Image('../../../Assets/imagenes/utpl_logo.png',10,8,70);
    // Arial bold 15
    $this->SetFont('Arial','',14);
    // Movernos a la derecha
    $this->Cell(10);
    // Título
    $this->Cell(170,30,'',0,1,'c');
    $this->Cell(10);
    $this->CellFitScale(35,6,utf8_decode('Loja,'),0,0,'c');
      
    foreach ($sth as $currentUserPDF1) {
    $fecha =$currentUserPDF1['Fecha'];
    $fechaEntera = strtotime($fecha);
    $anio = date("Y", $fechaEntera);
    $mes = date("m", $fechaEntera);
    $dia = date("d", $fechaEntera);
    $this->CellFitScale(8,6,$dia,0,0,'c');
    $this->CellFitScale(8,6,utf8_decode('de'),0,0,'c');


    $monthNum  =$mes;

switch($monthNum)
{   
    case 1:
    $monthNameSpanish = "Enero";
    $this->CellFitScale(15,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 2:
    $monthNameSpanish = "Febrero";
    $this->CellFitScale(20,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 3:
    $monthNameSpanish = "Marzo";
    $this->CellFitScale(15,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 4:
    $monthNameSpanish = "Abril";
    $this->CellFitScale(12,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 5:
    $monthNameSpanish = "Mayo";
    $this->CellFitScale(15,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 6:
    $monthNameSpanish = "Junio";
    $this->CellFitScale(15,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 7:
    $monthNameSpanish = "Julio";
$this->CellFitScale(13,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 8:
    $monthNameSpanish = "Agosto";
$this->CellFitScale(17,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 9:
    $monthNameSpanish = "Septiembre";
$this->CellFitScale(27,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 10:
    $monthNameSpanish = "Octubre";
$this->CellFitScale(20,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 11:
    $monthNameSpanish = "Noviembre";
    $this->CellFitScale(26,6,$monthNameSpanish,0,0,'c'); 
    break;
    case 12:
    $monthNameSpanish = "Diciembre";
    $this->CellFitScale(25,6,$monthNameSpanish,0,0,'c');
    break;
}
}
    $this->CellFitScale(9,6,utf8_decode('del'),0,0,'c');
    $this->CellFitScale(25,6,$anio,0,1,'c'); 
    
    
    $this->Cell(10);

    $this->CellFitScale(45,10,utf8_decode('Señor (a)'),0,1,'c');

    foreach ($sth3 as $currentUserPDF1) {
        
        $this->Cell(10);

    $this->Cell(15,6,utf8_decode(''),0,1,'c');
    $this->Cell(10);
    
        $this->CellFitScale(200,6,utf8_decode($currentUserPDF1['estudiante']),0,1,'c');      
    }
    $this->SetFont('Arial','B',12);
    $this->Cell(10);
    $this->CellFitScale(200,6,utf8_decode('ESTUDIANTE DE LA TITULACION DE SISTEMAS INFORMÁTICOS Y COMPUTACIÓN'),0,1,'c');      
    $this->Cell(15,10,utf8_decode(''),0,1,'c');
    $this->Cell(10);
    $this->SetFont('Arial','',12);
    $this->Cell(15,6,utf8_decode('De mi consideración:'),0,1,'c');
    $this->Cell(15,6,utf8_decode(''),0,1,'c');
    $this->Cell(10);
    $this->Cell(15,6,utf8_decode('Por medio del presente me permito comunicar a usted que para el período académico'),0,1,'c');
    $this->Cell(10);
    
    $this->Cell(15,6,utf8_decode('Abril 2019 - Agosto 2019,  ha sido asignada/o a :('),0,0,'c');
    foreach ($sth4 as $currentUserPDF4) {
        $this->Cell(80);

        $this->CellFitScale(200,6,utf8_decode($currentUserPDF4['Institucion']),0,1,'c');     

          $this->CellFitScale(15,6,utf8_decode('/'),0,0,'c');

    }
    foreach ($sth5 as $currentUserPDF5) {
        

        $this->CellFitScale(200,6,$currentUserPDF5['Dependencia'],0,0,'c');  
        $this->CellFitScale(15,6,utf8_decode(')'),0,0,'c');

    }




    
       
}

// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Número de página
    $this->Cell(0,10,utf8_decode('Página ').$this->PageNo().'/{nb}',0,0,'C');
}
}

// Creación del objeto de la clase heredada



$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','',12);

  
$pdf->Output();
?>
