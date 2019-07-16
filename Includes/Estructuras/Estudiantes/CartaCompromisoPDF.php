
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
    
    $sth = $objData->prepare(" Select Fecha from cartacompromiso where idCartaCom=(select MAX(idCartaCom) from cartacompromiso,estudiantes,usuarios
    where idusuario=fk_idUsuario_Est and usuario= "gsolano") ;") ;

    $sth->execute(['us' => $us]);

    $sth2 = $objData->prepare("SELECT CicloNombre FROM ciclos, estudiantes,usuarios
    where fk_idCiclo_Est=idciclo and fk_idUsuario_Est=idUsuario and usuario= :us");

    $sth2->execute(['us' => $us]);


    $fecha = "2018-07-30T20:55:20";
    $fechaEntera = strtotime($fecha);
    $anio = date("Y", $fechaEntera);
    $mes = date("m", $fechaEntera);
    $dia = date("d", $fechaEntera);
     
    $hora = date("H", $fechaEntera);
    $minutos = date("i", $fechaEntera);
    $segundos = date("s", $fechaEntera);
     
    #Notar que es lo mismo que hacer
    # date("Y-m-d H:i:s")
     
    echo "$anio-$mes-$dia $hora:$minutos:$segundos";


    
    // Logo
    $this->Image('../../../Assets/imagenes/utpl_logo.png',10,8,70);
    // Arial bold 15
    $this->SetFont('Arial','',12);
    // Movernos a la derecha
    $this->Cell(10);
    // Título
    $this->Cell(170,30,'',0,1,'c');
    $this->Cell(10);
    $this->CellFitScale(100,6,utf8_decode('Loja,'),1,0,'c');
    $this->SetFont('Arial','',12);
    $this->CellFitScale(100,6,utf8_decode('Sistemas Informáticos y Computación'),1,1,'c');
    $this->Cell(45);
    $this->SetFont('Arial','B',12);
    $this->CellFitScale(100,6,utf8_decode('REGISTRO Y CONTROL DE ASISTENCIA DE:'),1,0,'c');
    $this->SetFont('Arial','',12);

       
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
