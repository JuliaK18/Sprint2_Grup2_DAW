<?php
    class usuari{
        private $id;
        private $nom;
        private $cognom;
        private $DNI;
        private $telefon;
        private $dataNaixement;
        private $dataInscripcio;
        private $nomUsuari;
        private $contrasenya;
        private $email;
        private $estatVerificat;
        private $bloquejat;
        private $validat;
        private $tipusUsuari;
        private $bio;
        private $web;

        /* Constructor */

        function __construct($id, $nom, $cognom, $DNI, $telefon, $dataNaixement, $dataInscripcio, $nomUsuari, $contrasenya, $email, $estatVerificat, $bloquejat, $validat, $tipusUsuari, $bio, $web) {
            $this->id = $id;
            $this->nom = $nom;
            $this->cognom = $cognom;
            $this->DNI = $DNI;
            $this->telefon = $telefon;
            $this->datNaixement = $dataNaixement;
            $this->dataInscripcio = $dataInscripcio;
            $this->nomUsuari = $nomUsuari;
            $this->contrasenya = $contrasenya;
            $this->email = $email;
            $this->estatVerificat = $estatVerificat;
            $this->bloquejat = $bloquejat;
            $this->validat = $validat;
            $this->tipusUsuari = $tipusUsuari;
            $this->bio = $bio;
            $this->web = $web;

        }

        /* Eliminar el usuari */

        function eliminarUsuari($id){
            include_once '../../connect.php';
            conectar();
            $query ="DELETE * from Usuari where id.Usuari = '$id';";
            desconetar();
        }
       
        /* Consultar el usuari, retorna un array amb les propietats  */

        function consultaUsuari($id){
            include_once '../../connect.php';
            conectar();
            if ($linea = mysqli_query ($query ="SELECT FROM Usuari WHERE id.Usuari = '$id';")){ 
            }
            desconetar();
            return $linea;
        }

        /* Consulta les propietats individualment */
        /* Cal cridar primer a la funció consultarUSuari() i pasar el resultat a la funcio que necessitem */

        function consultaNom($linea){
            $resultat =$linea->fetch_assoc();
            return $resultat[$nom];
        }
        function consultaCognom($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$cognom];
        }
        function consultaDNI($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$DNI];
        }
        function consultaTelefon($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$telefon];
        }
        function consultaDataNaixement($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$dataNaixement];
        }
        function consultaDataInscripcio($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$dataInscripcio];
        }
        function consultaNomUsuari($linea){
            $resultat = $consulta->fetch_assoc();
            return $resultat[$nomUsuari];
        }
        function consultaContrasenya($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$contrasenya];
        }
        function consultaEmail($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$email];
        }
        function consultaEstatVerificat($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$estatVerificat];
        }
        function consultaBloquejat($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$bloquejat];
        }
        function consultaValidat($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$validat];
        }
        function consultaTipusUsuari($linea){
            $resultat = $linea->fetch_assoc();
            return $resultat[$tipusUsuari];
        }

        }
    