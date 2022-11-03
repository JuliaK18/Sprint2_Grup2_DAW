<?php
//Tancar la sessió de l'usuari

//Iniciem la sessió
session_start();

//Destrueix la sessió
session_unset(); //fem session unset per a buidar les dades de la sessió previament a la seva destrucció
session_destroy(); 

//Emmagatzema les dades de tancar sessió a la taula logs
header("Location: index.html"); //ens dirigirà a index.html 
die();
?>