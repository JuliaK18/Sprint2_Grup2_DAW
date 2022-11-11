<?php
function conectar(){
$mysqli = mysqli_connect("mariadb", "root", "rootpsw", "mirmeets2");

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