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

        function consultaUsuari($id){
            $query ="select * from Usuari where id.usuari = '$id';";
            return $linea;
        }
        function consultaNom($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$nom];
        }
        function consultaCognom($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$cognom];
        }
        function consultaDNI($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$DNI];
        }
        function consultaTelefon($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$telefon];
        }
        function consultaDataNaixement($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$dataNaixement];
        }
        function consultaDataInscripcio($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$dataInscripcio];
        }
        function consultaNomUsuari($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$nomUsuari];
        }
        function consultaContrasenya($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$contrasenya];
        }
        function consultaEmail($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$email];
        }
        function consultaEstatVerificat($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$estatVerificat];
        }
        function consultaBloquejat($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$bloquejat];
        }
        function consultaValidat($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$validat];
        }
        function consultaTipusUsuari($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$tipusUsuari];
        }

        function crearUsuari($){

        }
        



        }
    