<?php

//nos conectamos a la BD

require'class/database.php';
$objData = new Database();

//print_r($_POST);

$sth = $objData->prepare('UPDATE datos set nombre = :nombre, descri = :descri WHERE idDato = :idDato');

$idDato = $_POST['id'];
$nombre = $_POST['nombre'];
$descri = $_POST['descri'];

$sth->bindParam(':idDato', $idDato);
$sth->bindParam(':nombre', $nombre);
$sth->bindParam(':descri', $descri);

$sth->execute();

header('location: index.php');
