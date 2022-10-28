<?php
function conectar(){
$mysqli = new mysqli("localhost", "r00t", "r00t", "Mirmeets2");

/* comprobar la conexión */
if ($mysqli->connect_errno) {
    printf("Falló la conexión: %s\n", $mysqli->connect_error);
    exit();
}
}
function desconectar(){
    $mysqli->close();
    exit();
}
?>