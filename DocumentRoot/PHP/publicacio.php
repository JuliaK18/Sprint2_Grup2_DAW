<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>publicacio</title>
</head>
<body>
<?php

class Publicacio{
    private $id;
    private $dataPublicacio;
    private $censurat;
    private $idPost;
    private $idComentari;
    private $idUsuari;
    
    function __construct($id) {
        //, $dataPublicacio, $censurat, $idPost, $idComentari, $idUsuari
        $this->id = $id;
        $this-> dataPublicacio = "$dataPublicacio";
        $this-> censurat = "$censurat";
        $this-> idPost = "$idPost";
        $this-> idComentari = "$idComentari";
        $this-> idUsuari = "$idUsuari";
    }


    function eliminarPost($id){
        $query ="DELETE * FROM Publicacio WHERE id.publicacio = '$id';";
    }

    function consultaPost(){
        include_once '../connexio.php';
        //Formulem la consulta

       // $consulta = mysqli_query($connexioDB,");
        //if(!$consulta){
          //  die(mysqli_error($connexioDB));
        //}
        $consulta =  "SELECT * FROM Publicacio WHERE id=1";

        if ($result = $connexioDB->query($consulta)) {
            if ($result->num_rows > 0) {
                while ($obj = $result->fetch_object()) {
                    echo "<tr>";
                    echo "<td> $obj->Id </td>";
                    echo "<td> $obj->DataPublicacio </td>";
                    echo "</tr>";
                }
            }
        }

        $connexioDB->close();

       // $resultat = $consulta->fetch_assoc();
        //Comprovem el resultat
        /*if(!$resultat){
            $missatge = 'Consulta fallida: ' . mysql_error() . "\n";
            $missatge = 'Consulta correcta: ' . $consulta;
            die($missatge);
        }
        echo "<script type='text/javascript'>alert('Alerta!');<script>";

        echo "<script type='text/javascript'>alert('$resultat($id)');<script>";
        */
    }


}
$publicacio = new Publicacio(1);
$publicacio->consultaPost(1); 

?>
</body>
</html>
