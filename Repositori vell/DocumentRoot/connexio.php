<?php
// Connexio a base de dades
  $db_host="mariadb"; //si no es "mariadb".
  $db="mirmeets2"; //nom de la base de dades
  $user="root"; //usuari BDD
  $pass="rootpsw"; //pass BDD
  
  $connexioDB = mysqli_connect($db_host, $user, $pass, $db);

  if ($connexioDB->connect_error) {
    die("Connexió fallida: " . $connexioDB->connect_error);
  }
?>