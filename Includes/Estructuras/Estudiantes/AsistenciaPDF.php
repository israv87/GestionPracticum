
<?php
require('../../../assets/FPDF/fpdf.php');
require('../../Database/db_PDF/conexion_db_pdf.php');






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
    $objData = new  Database();
    
    $sth = $objData->prepare("SELECT TipoGP FROM tipo_gp,nivel_gp,tipogp_nivel, estudiantes, usuarios
    where fk_TipoGpNV=idTipogp and fkNivelGPNV =idNivelGP and fk_idNivelGP_Est = idNivelGP
    and fk_idUsuario_Est = idUsuario and usuario = :us;
    ") ;

    $sth->execute(['us' => $us]);

    $sth2 = $objData->prepare("SELECT CicloNombre FROM ciclos, estudiantes,usuarios
    where fk_idCiclo_Est=idciclo and fk_idUsuario_Est=idUsuario and usuario= :us");

    $sth2->execute(['us' => $us]);

    
    $sth3 = $objData->prepare("    SELECT NivelGP FROM nivel_gp,estudiantes, usuarios
    where fk_idNivelGP_Est=idNivelGp and fk_idNivelGP_Est = idNivelGP
    and fk_idUsuario_Est = idUsuario and usuario = :us");

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

    $sth7 = $objData->prepare("SELECT concat(PrimerNombre,' ', SegundoNombre,' ', apellido_paterno,' ',apellido_materno,' ') As 'estudiante' 
    FROM estudiantes,usuarios where fk_idUsuario_Est = idusuario and usuario=:us") ;
       

    $sth7->execute(['us' => $us]);



    
    // Logo
    $this->Image('../../../Assets/imagenes/utpl_logo.png',10,8,50);
    // Arial bold 15
    $this->SetFont('Arial','B',12);
    // Movernos a la derecha
    $this->Cell(45);
    // Título
    $this->CellFitScale(100,6,utf8_decode('NOMBRE DE LA TITULACIÓN:'),1,0,'c');
    $this->SetFont('Arial','',12);
    $this->CellFitScale(100,6,utf8_decode('Sistemas Informáticos y Computación'),1,1,'c');
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->CellFitScale(100,6,utf8_decode('REGISTRO Y CONTROL DE ASISTENCIA DE:'),1,0,'c');
    $this->SetFont('Arial','',12);

    foreach ($sth as $currentUserPDF1) {
        $this->Cell(100,6,utf8_decode($currentUserPDF1['TipoGP']),1,1,'c');
    }

  
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->CellFitScale(100,6,utf8_decode('PRÁCTICAS PRE PROFESIONALES:'),1,0,'c');
    $this->SetFont('Arial','',12);
    
    foreach ($sth2 as $currentUserPDF2) {
        $this->Cell(100,6,utf8_decode($currentUserPDF2['CicloNombre'].' Ciclo'),1,1,'c');
    }
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->CellFitScale(100,6,utf8_decode('GESTIÓN PRODUCTIVA/PRÁCTICUM:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth3 as $currentUserPDF3) {
        $this->CellFitScale(100,6,utf8_decode($currentUserPDF3['NivelGP']),1,1,'c');
    }
    
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->CellFitScale(100,6,utf8_decode('Periodo Academico:'),1,0);
    $this->SetFont('Arial','',12);

    $this->CellFitScale(100,6,utf8_decode('Abril - Agosto 2019'),1,1,'c');
    $this->Cell(45);
    $this->Ln(10);
    
    $this->SetFont('Arial','B',12);
    $this->Cell(1);
    $this->CellFitScale(45,6,utf8_decode('Institución:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth4 as $currentUserPDF4) {
        $this->CellFitScale(200,6,utf8_decode($currentUserPDF4['Institucion']),1,1,'c');
    }
    $this->Cell(1);
    $this->SetFont('Arial','B',12);
   
    $this->CellFitScale(45,6,utf8_decode('Dependencia:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth5 as $currentUserPDF5) {
        $this->CellFitScale(200,6, $currentUserPDF5['Dependencia'],1,1,'c');
    }
    $this->Cell(1);
    $this->SetFont('Arial','B',12);
    $this->CellFitScale(45,6,utf8_decode('Tutor Externo:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth6 as $currentUserPDF6) {
        $this->CellFitScale(200,6, $currentUserPDF6['te'],1,1,'c');
    }
    $this->Cell(1);
    $this->SetFont('Arial','B',12);
    $this->CellFitScale(45,6,utf8_decode('Estudiante:'),1,0,'c');

   
    $this->SetFont('Arial','',12);
    foreach ($sth7 as $currentUserPDF7) {
        $this->CellFitScale(200,6, $currentUserPDF7['estudiante'],1,1,'c');
    }
    // Salto de línea
    $this->Ln(5);
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
$pdf->AddPage(90);
$pdf->SetFont('Times','',12);
/*
while ($row = $resultado1->fetch_assoc()) {
    $pdf->Cell(45);
    $pdf->Cell(100,6,$row['TipoGP'],1,1);
}

  */
$pdf->Output();
?>
