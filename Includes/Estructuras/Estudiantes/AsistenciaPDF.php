
<?php
require('../../../assets/FPDF/fpdf.php');

$idReg = $_GET['idReg']; 

class PDF extends FPDF
{
    private $resultado1;
    
  
    function Header()
{ 
include '../../Database/db_Estudiantes/Conexion_Estudiante.php';
include '../../Database/db_PDF/conexion_db_pdf.php';
include '../../Database/user_session.php';
include '../../Database/user.php';
    

$userSession = new UserSession();
$user = new User();
$us=$userSession->getCurrentUser();
$user->setEstudiante($userSession->getCurrentUser());

$idReg = $_GET['idReg']; 

    $objData = new  Database();
    
    $sth = $objData->prepare("SELECT nivelGp FROM  estudiantes e, usuarios u where e.idUsuario = u.idUsuario and usuario = :us;") ;

    $sth->execute(['us' => $us]);

    $sth2 = $objData->prepare("SELECT ciclo FROM estudiantes e, usuarios u where e.idUsuario = u.idUsuario and usuario = :us");

    $sth2->execute(['us' => $us]);
    
    $sth3 = $objData->prepare("SELECT nivelGp FROM estudiantes e, usuarios u where e.idUsuario = u.idUsuario and usuario = :us;");

    $sth3->execute(['us' => $us]);
    
    $sth4 = $objData->prepare(" SELECT Area_utpl FROM dependencias d, proyectos p, asignacion_proyecto a, estudiantes e, usuarios u 
    where d.idDependencia = p.idDependencia and a.idProyectos = p.idProyectos and a.idEstudiante = e.idEstudiante 
    and e.idUsuario = u.idUsuario and usuario  = :us;");

    $sth4->execute(['us' => $us]);


    $sth5 = $objData->prepare(" SELECT departamento FROM dependencias d, proyectos p, asignacion_proyecto a, estudiantes e, usuarios u 
    where d.idDependencia = p.idDependencia and a.idProyectos = p.idProyectos and a.idEstudiante = e.idEstudiante 
    and e.idUsuario = u.idUsuario and usuario  = :us;");

    $sth5->execute(['us' => $us]);

    
    $sth6 = $objData->prepare("SELECT concat(primerNombreTE,' ', segundoNombreTE,' ', apellidoPaternoTE,' ',apellidoMaternoTE,' ') as 'te' 
    FROM dependencias d, tutor_externo t, proyectos p, asignacion_proyecto a, estudiantes e, usuarios u 
    where t.idDependencia = d.idDependencia and p.idDependencia = d.idDependencia and a.idProyectos = p.idProyectos 
    and a.idEstudiante = e.idEstudiante and e.idUsuario = u.idUsuario and usuario =:us ") ;
       
    $sth6->execute(['us' => $us]);

    $sth7 = $objData->prepare("SELECT concat(PrimerNombre,' ', SegundoNombre,' ', apellidopaterno,' ',apellidomaterno,' ') As 'estudiante' 
    FROM estudiantes e,usuarios u where e.idUsuario = u.idUsuario and usuario = :us;");
       

    $sth7->execute(['us' => $us]);

    $reg= $idReg;
    $sth8 = $objData->prepare("SELECT * FROM actividades_registro
     where idRegistroAistencias = $reg") ;

    $sth8->execute();

        
    $sth9 = $objData->prepare("SELECT sum(HorasTrabajadas) as 'horas' from actividades_registro where idRegistroAistencias =$reg") ;
      
   $sth9->execute();
  



    
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
        $this->Cell(100,6,utf8_decode($currentUserPDF1['nivelGp']),1,1,'c');
    }

  
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->Cell(100,6,utf8_decode('PRÁCTICAS PRE PROFESIONALES:'),1,0,'c');
    $this->SetFont('Arial','',12);
    
    foreach ($sth2 as $currentUserPDF2) {
        $this->Cell(100,6,utf8_decode($currentUserPDF2['ciclo'].' Ciclo'),1,1,'c');
    }
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->Cell(100,6,utf8_decode('GESTIÓN PRODUCTIVA/PRÁCTICUM:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth3 as $currentUserPDF3) {
        $this->Cell(100,6,utf8_decode($currentUserPDF3['nivelGp']),1,1,'c');
    }
    
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->Cell(100,6,utf8_decode('Periodo Academico:'),1,0);
    $this->SetFont('Arial','',12);

    $this->Cell(100,6,utf8_decode('Abril - Agosto 2021'),1,1,'c');
    $this->Cell(45);
    $this->Ln(10);
    
    $this->SetFont('Arial','B',12);
    $this->Cell(1);
    $this->Cell(45,6,utf8_decode('Institución:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth4 as $currentUserPDF4) {
        $this->Cell(200,6,utf8_decode($currentUserPDF4['Area_utpl']),1,1,'c');
    }
    $this->Cell(1);
    $this->SetFont('Arial','B',12);
   
    $this->Cell(45,6,utf8_decode('Dependencia:'),1,0,'c');
    $this->SetFont('Arial','',12);
    foreach ($sth5 as $currentUserPDF5) {
        $this->Cell(200,6, utf8_decode($currentUserPDF5['departamento']),1,1,'c');
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
            $this->Cell(35,6, utf8_decode($currentUserPDF9['horas']),1,1,'c');
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
