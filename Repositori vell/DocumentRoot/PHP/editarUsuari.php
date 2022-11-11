<?php
$nomUsuari = $_POST["nom-usuari"];
$bio = $_POST["biografia-usuari"];
$web = $_POST["web-usuari"];

function modifiacarUsuari($id, $nomUsuari, $bio, $web){
    include_once '../connect.php';
    include_once '../usuari.php';

    conectar();
    $usuari = consultaUsuari($id);
    $resultat = $usuari->fetch_assoc();
    $nomNou = $resultat[NomUsuari];
    $bioNou = $resultat[Biografia];
    $webNou = $resultat[Web];

    $query = ("UPDATE Usuari SET (NomUsuari = '$nomNou',Biografia = '$bioNou',Web = '$webNou') WHERE id.usuari = '$id'; ");
    desconetar();
}





?>