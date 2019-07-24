
<?php
require('../../../assets/FPDF/fpdf.php');



class PDF extends FPDF
{
    private $Consulta2;
    private $Consulta3;
    private $Consulta4;
    private $Consulta5;
    private $Consulta6;
    private $Consulta8; 
    private $consulta9;
    private $Consulta10;
    private $Consulta11;


    private $p_cord;
    private $s_cord;
    private $ap_cord;
    private $am_cord;
    private $p_est;
    private $s_est;
    private $ap_est;
    private $am_est;
    private $p_t_ext;
    private $s_t_ext;
    private $ap_t_ext;
    private $am_t_ext;
    private $p_t_ac;
    private $s_t_ac;
    private $ap_t_ac;
    private $am_t_ac;
    
    




    
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
$idAsig = $_GET['idAsig']; 

    $objData = new  Database();
    
    $sth = $objData->prepare(" SELECT Fecha from carta_asig 
    where idCARTA_ASIG=(select MAX(idCARTA_ASIG) from carta_asig,estudiantes,usuarios
    where idusuario=fk_idUsuario_Est and usuario=:us )") ;

    $sth->execute(['us' => $us]);


    $sth2 = $objData->prepare("SELECT CicloNombre FROM ciclos, estudiantes,usuarios
    where fk_idCiclo_Est=idciclo and fk_idUsuario_Est=idUsuario and usuario= :us");

    $sth2->execute(['us' => $us]);

    foreach ($sth2 as $currentUserPDF2) {

        $consulta2 = $currentUserPDF2['CicloNombre'];
    }
     
   
    $sth3 = $objData->prepare("SELECT PrimerNombre,SegundoNombre,apellido_paterno,apellido_materno 
    FROM estudiantes,usuarios where fk_idUsuario_Est = idusuario and usuario=:us") ;
       

    $sth3->execute(['us' => $us]);


    foreach ($sth3 as $currentUserPDF3) {

        
    $p_est    = $currentUserPDF3['PrimerNombre'];
    $s_est    = $currentUserPDF3['SegundoNombre'];
    $ap_est    = $currentUserPDF3['apellido_paterno'];
    $am_est    = $currentUserPDF3['apellido_materno'];
    }

    $sth4 = $objData->prepare(" SELECT Institucion FROM instituciones, estudiantes, proyectos, usuarios, proyecto_estudiante
    where idInstitucion = fk_idInstitucion 
    and fk_idproyectos_pe=idproyectos and fk_idestudiante_pe =idestudiante 
    and  idestudiante=idusuario and usuario =:us");

    $sth4->execute(['us' => $us]);

    foreach ($sth4 as $currentUserPDF4) {

        $consulta4 = $currentUserPDF4['Institucion'];
    }

    $sth5 = $objData->prepare(" SELECT Dependencia
    FROM dep_proyecto, proyectos, dependencias, estudiantes, usuarios, proyecto_estudiante
    where fk_dep_dp = idDependencia and fk_pry_dp= idProyectos and fk_idProyectos_pe = idProyectos 
    and fk_idEstudiante_pe = idEstudiante and fk_idUsuario_est = idusuario and usuario = :us");

    $sth5->execute(['us' => $us]);

    foreach ($sth5 as $currentUserPDF5) {

        $consulta5 = utf8_decode($currentUserPDF5['Dependencia']);
    }

    $sth6 = $objData->prepare("SELECT PrimerNombre,SegundoNombre,apellido_paterno,apellido_materno
    FROM text_estudiante,tutor_externo,estudiantes,usuarios
    Where fk_idUsuario_tex=idUsuario and fk_idTutorExterno=idTutorExterno and fk_idEstudiante = idEstudiante
    and idEstudiante = (select idEstudiante from estudiantes, usuarios where fk_idUsuario_Est = idusuario and usuario=:us)") ;
       

    $sth6->execute(['us' => $us]);

    
    foreach ($sth6 as $currentUserPDF6) {

    
        
    $p_t_ext = $currentUserPDF6['PrimerNombre'];
    $s_t_ext = $currentUserPDF6['SegundoNombre'];
    $ap_t_ext = $currentUserPDF6['apellido_paterno'];
    $am_t_ext = $currentUserPDF6['apellido_materno'];
    

    }

    $sth7 = $objData->prepare(" SELECT PrimerNombre,SegundoNombre,apellido_paterno,apellido_materno 
    FROM usuarios, coordinador_titulacion where fk_idusuario_cord=idUsuario") ;
       

    $sth7->execute();

    
    foreach ($sth7 as $currentUserPDF7) {

    $p_cord    = $currentUserPDF7['PrimerNombre'];
    $s_cord    = $currentUserPDF7['SegundoNombre'];
    $ap_cord    = $currentUserPDF7['apellido_paterno'];
    $am_cord    = $currentUserPDF7['apellido_materno'];

    }

    $sth8 = $objData->prepare("  SELECT cedula FROM usuarios where usuario= :us") ;
       

    $sth8->execute(['us' => $us]);

    
    foreach ($sth8 as $currentUserPDF8) {

        $consulta8 = $currentUserPDF8['cedula'];
    
    }



    $sth9 = $objData->prepare("SELECT TipoGP FROM tipo_gp,nivel_gp,tipogp_nivel, estudiantes, usuarios
    where fk_TipoGpNV=idTipogp and fkNivelGPNV =idNivelGP and fk_idNivelGP_Est = idNivelGP
    and fk_idUsuario_Est = idUsuario and usuario = :us") ;

    $sth9->execute(['us' => $us]);

    foreach ($sth9 as $currentUserPDF9) {
        $consulta9 = $currentUserPDF9['TipoGP'];
    }

    $sth10 = $objData->prepare("    SELECT NivelGP FROM nivel_gp,estudiantes, usuarios
    where fk_idNivelGP_Est=idNivelGp and fk_idNivelGP_Est = idNivelGP
    and fk_idUsuario_Est = idUsuario and usuario = :us");

    $sth10->execute(['us' => $us]);

   
    foreach ($sth10 as $currentUserPDF10) {

        $consulta10 = $currentUserPDF10['NivelGP'];
    
    }
   

    $sth6 = $objData->prepare("SELECT PrimerNombre,SegundoNombre,apellido_paterno,apellido_materno
    FROM text_estudiante,tutor_externo,estudiantes,usuarios
    Where fk_idUsuario_tex=idUsuario and fk_idTutorExterno=idTutorExterno and fk_idEstudiante = idEstudiante
    and idEstudiante = (select idEstudiante from estudiantes, usuarios where fk_idUsuario_Est = idusuario and usuario=:us)") ;
       

    $sth6->execute(['us' => $us]);

    
    foreach ($sth6 as $currentUserPDF6) {

    
        
    $p_t_ext = $currentUserPDF6['PrimerNombre'];
    $s_t_ext = $currentUserPDF6['SegundoNombre'];
    $ap_t_ext = $currentUserPDF6['apellido_paterno'];
    $am_t_ext = $currentUserPDF6['apellido_materno'];
    

    }
    
    $sth6 = $objData->prepare("SELECT PrimerNombre,SegundoNombre,apellido_paterno,apellido_materno FROM tutoracademico_estudiante,
    tutor_academico,estudiantes,usuarios
    where fk_idUsuario_tac = idUsuario and fk_idTutorAcademico_te =idTutorAcademico and fk_idEstudiante_te = idEstudiante
    and fk_idUsuario_Est=(select idusuario from usuarios where usuario=:us)") ;
       

    $sth6->execute(['us' => $us]);

    
    foreach ($sth6 as $currentUserPDF6) {

    
        
    $p_t_ac = $currentUserPDF6['PrimerNombre'];
    $s_t_ac = $currentUserPDF6['SegundoNombre'];
    $ap_t_ac = $currentUserPDF6['apellido_paterno'];
    $am_t_ac = $currentUserPDF6['apellido_materno'];
    

    }
    

    $sth11 = $objData->prepare(" SELECT FechaInicio from carta_asig 
    where idCARTA_ASIG=(select MAX(idCARTA_ASIG) from carta_asig,estudiantes,usuarios
    where idusuario=fk_idUsuario_Est and usuario=:us )") ;

    $sth11->execute(['us' => $us]);


    foreach ($sth11 as $currentUserPDF11) {

        $consulta11 = $currentUserPDF11['FechaInicio'];
    }

    

    // Logo
    $this->Image('../../../Assets/imagenes/utpl_logo.png',10,8,70);
    // Arial bold 15
    $this->SetFont('Arial','',12);
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
    case 12:$
    $monthNameSpanish = "Diciembre";
    $this->CellFitScale(25,6,$monthNameSpanish,0,0,'c');
    break;
}
}
    $this->CellFitScale(9,6,utf8_decode('del'),0,0,'c');
    $this->CellFitScale(25,6,$anio,0,1,'c'); 
    $this->Cell(9,6,utf8_decode(''),0,1,'c');
    
    
    $this->Cell(10);

    $this->MultiCell(170,6,utf8_decode("Señor (a) 


".$p_est." ".$s_est." ".$ap_est." ".$am_est."
ESTUDIANTE DE LA TITULACIÓN  DE SISTEMAS INFORMÁTICOS Y COMPUCAIÓN DE LA UTPL

De mi consideración:

Por medio del presente me permito comunicar a usted que para el período académico Abril 2019 - Agosto 2019, ha sido asignada/o a (".$consulta4." / ".utf8_decode($consulta5).")
para que a partir de ".$consulta11." , realice 96 horas de  práctica pre profesional. 

Estas actividades se realizarán en coordinación con   "	.$p_t_ext." ".$s_t_ext." ".$ap_t_ext." ".$am_t_ext.", tutor externo de la práctica pre profesional y  ".$p_t_ac." ".$s_t_ac." ".$ap_t_ac." ".$am_t_ac.", tutor académico de las mismas.

El número de horas señalado corresponde a: 

-    Práctica pre profesional del ".$consulta2.".
-    ".$consulta9.": ".$consulta10."


Particular que informo a usted para los fines pertinentes


Atentamente,
    

    
         f)________________________		        	        
    ".$p_cord." ".$s_cord." ".$ap_cord." ".$am_cord."             	
COORDINADORA DE LA TIULACIÓN DE SISTEMAS INFORMÁTICOS Y COMPUCAIÓN                                    
    "),0,'J',false);


/*
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

*/


    
       
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
