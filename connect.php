<?php
function conectar(){
$mysqli = new mysqli("localhost", "my_user", "my_password", "world");

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