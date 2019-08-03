
<?php
require('../../../assets/FPDF/fpdf.php');

$idReg = $_GET['idReg']; 

class PDF extends FPDF
{
    private $resultado1;
    
  
    function Header()
{  include('../../Database/db_Estudiantes/Conexion_Estudiante.php');
    include('../../Database/db_PDF/conexion_db_pdf.php');
    include'../../Database/user_session.php';
    include'../../Database/user.php';
    

$userSession = new UserSession();
$user = new User();
$user->setUser($userSession->getCurrentUser());
$us=$userSession->getCurrentUser();

$idReg = $_GET['idReg']; 

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

    
    $sth8 = $objData->prepare("SELECT * FROM actividades_registro
     where fk_idRegistroAistencias =$idReg") ;
       

    $sth8->execute();

    $sth9 = $objData->prepare(" SELECT sum(HorasTrabajadas) as 'total_horas_trabajadas' FROM actividades_registro
    where fk_idRegistroAistencias=(SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
    where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us)") ;
      
   $sth9->execute(['us' => $us]);
  



    
    // Logo
    $this->Image('../../../Assets/imagenes/utpl_logo.png',10,8,50);
    // Arial bold 15
    $this->SetFont('Arial','B',12);
    // Movernos a la derecha
    $this->Cell(45);
    // Título
    $this->Cell(100,6,utf8_decode('NOMBRE DE LA TITULACIÓN:'),1,0,'c');
    $this->SetFont('Arial','',12);
    $this->Cell(100,6,utf8_decode('Sistemas Informáticos y Computación'),1,1,'c');
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->Cell(100,6,utf8_decode('REGISTRO Y CONTROL DE ASISTENCIA DE:'),1,0,'c');
    $this->SetFont('Arial','',12);

    foreach ($sth as $currentUserPDF1) {
        $this->Cell(100,6,utf8_decode($currentUserPDF1['TipoGP']),1,1,'c');
    }

  
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->Cell(100,6,utf8_decode('PRÁCTICAS PRE PROFESIONALES:'),1,0,'c');
    $this->SetFont('Arial','',12);
    
    foreach ($sth2 as $currentUserPDF2) {
        $this->Cell(100,6,utf8_decode($currentUserPDF2['CicloNombre'].' Ciclo'),1,1,'c');
    }
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->Cell(100,6,utf8_decode('GESTIÓN PRODUCTIVA/PRÁCTICUM:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth3 as $currentUserPDF3) {
        $this->Cell(100,6,utf8_decode($currentUserPDF3['NivelGP']),1,1,'c');
    }
    
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->Cell(100,6,utf8_decode('Periodo Academico:'),1,0);
    $this->SetFont('Arial','',12);

    $this->Cell(100,6,utf8_decode('Abril - Agosto 2019'),1,1,'c');
    $this->Cell(45);
    $this->Ln(10);
    
    $this->SetFont('Arial','B',12);
    $this->Cell(1);
    $this->Cell(45,6,utf8_decode('Institución:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth4 as $currentUserPDF4) {
        $this->Cell(200,6,utf8_decode($currentUserPDF4['Institucion']),1,1,'c');
    }
    $this->Cell(1);
    $this->SetFont('Arial','B',12);
   
    $this->Cell(45,6,utf8_decode('Dependencia:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth5 as $currentUserPDF5) {
        $this->Cell(200,6, $currentUserPDF5['Dependencia'],1,1,'c');
    }
    $this->Cell(1);
    $this->SetFont('Arial','B',12);
    $this->Cell(45,6,utf8_decode('Tutor Externo:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth6 as $currentUserPDF6) {
        $this->Cell(200,6, $currentUserPDF6['te'],1,1,'c');
    }
    $this->Cell(1);
    $this->SetFont('Arial','B',12);
    $this->Cell(45,6,utf8_decode('Estudiante:'),1,0,'c');

   
    $this->SetFont('Arial','',12);
    foreach ($sth7 as $currentUserPDF7) {
        $this->Cell(200,6, $currentUserPDF7['estudiante'],1,1,'c');
    }
    // Salto de línea
    $this->Ln(10);

   
   
    $this->SetFont('Arial','B',12);
    
    $this->Cell(75,6,utf8_decode('Actividad'),1,0,'c');
    $this->Cell(30,6,utf8_decode('Fecha'),1,0,'c');
    $this->Cell(35,6,utf8_decode('Día'),1,0,'c');
    $this->Cell(35,6,utf8_decode('Hora de Entrada'),1,0,'c'); 
    $this->Cell(35,6,utf8_decode('Hora de salida'),1,0,'c');
    $this->Cell(35,6,utf8_decode('Horas Trabajadas'),1,1,'c');
  
    foreach ($sth8 as $currentUserPDF8) {
       
      
        $this->SetFont('Arial','',12);
        $scheduled_day = $currentUserPDF8['Fecha'];
        $days = ['Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sábado'];
        $day = date('w',strtotime($scheduled_day));
        $scheduled_day = date(strtotime(($days[$day])))." $days[$day]";  

        $this->Cell(75,6, utf8_decode($currentUserPDF8['Actividad']),1,0,'c');
        $this->Cell(30,6, utf8_decode($currentUserPDF8['Fecha']),1,0,'c');
        $this->Cell(35,6,utf8_decode($scheduled_day) ,1,0,'c');
        $this->Cell(35,6, utf8_decode($currentUserPDF8['HEntrada']),1,0,'c');
        $this->Cell(35,6, utf8_decode($currentUserPDF8['HSalida']),1,0,'c');
        $this->Cell(35,6, utf8_decode($currentUserPDF8['HorasTrabajadas']),1,1,'c');
        }
        foreach ($sth9 as $currentUserPDF9) {
       
            $this->SetFont('Arial','B',12);
            $this->Cell(175,6,utf8_decode(''),1,0,'c');
            $this->Cell(35,6,utf8_decode('Total'),1,0,'c');
            $this->Cell(35,6, utf8_decode($currentUserPDF9['total_horas_trabajadas']),1,1,'c');
            }
      
        
        $this->Ln(5);
        $this->SetFont('Arial','B',12);
        $this->Cell(45,6,utf8_decode('Observaciones'),1,0,'c');
        $this->SetFont('Arial','',12);
        $this->Cell(200,6,'Ninguna',1,1,'c');
       
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

  
$pdf->Output();
?>
