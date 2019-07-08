<?php

//nos conectamos a la BD

require'class/database.php';
$objData = new Database();

$sth = $objData->prepare('SELECT * FROM datos WHERE idDato = :idDato');
$idDato = $_GET['id'];
$sth->bindParam(':idDato', $idDato);

$sth->execute();

$result = $sth->fetchAll();

//print_r($result);

?>
<!DOCTYPE html>
<html lang="es">
    
    <head>
        <title>CRUD con PDO</title>
        <meta charset="utf-8" />
    </head>
    <body>
        <form name="crud" method="post" action="modificar_exe.php">
            <label>Nombre:</label><br>
            <input type="text" name="nombre" value="<?php echo $result[0]['nombre'];?>" /><br>
            <label>Descripción:</label><br>
            <textarea name="descri" rows="10"><?php echo $result[0]['descri'];?></textarea><br>
            <input type="hidden" name="id" value="<?php echo $result[0]['idDato'];?>" />
            <input type="submit" value="MODIFICAR" />
        </form>    
    </body>
    
</html>