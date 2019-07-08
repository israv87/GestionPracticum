<?php

//nos conectamos a la BD

require'class/database.php';
$objData = new Database();

$sth = $objData->prepare('DELETE FROM datos WHERE idDato = :idDato');

$idDato = $_GET['id'];

$sth->bindParam(':idDato', $idDato);

$sth->execute();

header('location: index.php');
