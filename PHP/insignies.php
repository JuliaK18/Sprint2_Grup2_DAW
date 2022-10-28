<?php

class insignies{ 

     private $id;
     private $nom;

        public function set_name ($id, $nom){
                    
            $this->id = $id;
            $this->nom = $nom;
        }

        public function Connect(){
            $conn = mysqli_connect($this->host, $this->user, $this->pass, $this->db);
            if ($conn) {
                echo "Connected";
            }
        }

        function consultaInsignia($id){
            $query ="select * from Insignies where id.insignica = '$id';";
            return $linea;
        }

        function consultaNom($linea){
            $linea = $consulta->fetch_assoc();
            return $linea[$nom];
        }

        
}

