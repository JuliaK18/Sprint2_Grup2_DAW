<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

<?php
include 'connexio.php';
class insignies{ 

     private $id;
     private $nom;

        public function mostrar_Insignia ($id, $nom){
            include_once '../connexio.php';   
            $consulta = "SELECT * FROM Insignies WHERE id=1" ;
            
            if ($result = $connexioDB->query($consulta)){
                if ($result ->num_rows > 0) {
                    while ($obj = $result->fetch_object()) {
                        echo "<tr>";
                        echo "<td> $obj->Id </td>";
                        echo "<td> $obj->Nom</td>";
                        echo "</tr>";
                    }
                }

            }

        public function actualitzar ($id, $nom){
            include_once '../connexio.php';
            $consulta = "UPDATE * FROM Insignies" ;

            

            
        }




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
?>
</body>
</html>

