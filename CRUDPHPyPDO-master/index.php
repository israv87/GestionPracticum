<?php

//nos conectamos a la BD

require'class/database.php';
$objData = new Database();

$sth = $objData->prepare('SELECT * FROM datos');

$sth->execute();

$result = $sth->fetchAll();

?>
<!DOCTYPE html>
<html lang="es">
    
    <head>
        <title>CRUD con PDO</title>
        <meta charset="utf-8" />
    </head>
    <body>
        <table border="1">
            <tr>
                <td colspan="4"><a href="nuevo.php">Nuevo Registro</a></td>
            </tr>
            <tr>
                <td>Nombre</td>
                <td>Descripción</td>
                <td colspan="2">Acciones</td>
            </tr>
            <?php
            
            if($result){
                foreach ($result as $key => $value) {?>
            <tr>
                <td><?php echo $value['nombre'];?></td>
                <td><?php echo $value['descri'];?></td>
                <td><a href="modificar.php?id=<?php echo $value['idDato'];?>">Modificar</a></td>
                <td><a href="eliminar.php?id=<?php echo $value['idDato'];?>">Eliminar</a></td>
            </tr>
            <?php
                
            }
            
                
            }else{?>
            <tr>
                <td colspan="4">No hay registros para mostrar</td>
            </tr><?php
                
            }
            ?>
            
        </table>        
    </body>
    
</html>