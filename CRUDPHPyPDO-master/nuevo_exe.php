<?php
session_start();
//nos conectamos a la BD

require'class/database.php';
$objData = new Database();

$userSession->getCurrentUser();
//print_r($_POST);

$sth = $objData->prepare('INSERT INTO datos values (:idDato, :nombre, :descri) ');

$idDato = '';
$nombre = $_POST['nombre'];
$descri = $_POST['descri'];

$sth->bindParam(':idDato', $idDato);
$sth->bindParam(':nombre', $nombre);
$sth->bindParam(':descri', $descri);

$sth->execute();

header('location: index.php');