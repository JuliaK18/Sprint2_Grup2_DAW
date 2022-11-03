<?php

class insignies{ 

     private $id;
     private $nom;

        public function set_name ($id, $nom){
                    
            $this->id = $id;
            $this->nom = $nom;
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

