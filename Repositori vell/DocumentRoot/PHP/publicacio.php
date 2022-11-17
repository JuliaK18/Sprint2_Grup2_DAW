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
    private $nom;
    
    function __construct($id) {
        //, $dataPublicacio, $censurat, $idPost, $idComentari, $idUsuari
        $this->id = $id;
        $this-> dataPublicacio = "$dataPublicacio";
        $this-> censurat = "$censurat";
        $this-> idPost = "$idPost";
        $this-> idComentari = "$idComentari";
        $this-> idUsuari = "$idUsuari";
    }

    public function CrearPost($nom){
        include_once '../connexio.php';

        $conn = conn();
        // Check connection
        if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
        }
        $sql =  "INSERT INTO `Publicacio` (`Id`, `DataPublicacio`, `Censurat`, `IdPost`, `IdComentari`, `IdUsuari`) VALUES ('9999', '2022-11-17 13:29:36.000000', NULL, '9999', '10', '4')";
          
        if (mysqli_query($conn, $sql)) {
            echo "Added successfully";
        } else {
            echo "<a id='error'>Error updating record: " . mysqli_error($conn); 
        }
        mysqli_close($conn);
        
        }


    function eliminarPost($id){
        include_once '../connexio.php';

        $conn = conn();
        // Check connection
        if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
        }
        $sql =  "DELETE FROM Publicacio WHERE `Publicacio`.`Id` = 10";
          
        if (mysqli_query($conn, $sql)) {
            echo "Added successfully";
        } else {
            echo "<a id='error'>Error updating record: " . mysqli_error($conn); 
        }
        mysqli_close($conn);
        
        }    }

    function consultaPost(){
        include_once '../connexio.php';

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

    }

    function pujarFoto(){
    //Si es vol pujar una imatge
    if (isset($_POST['subir'])) {
    //Recogemos el archivo enviado por el formulario
    $archivo = $_FILES['archivo']['name'];
    //Si el archivo contiene algo y es diferente de vacio
    if (isset($archivo) && $archivo != "") {
        //Obtenemos algunos datos necesarios sobre el archivo
        $tipo = $_FILES['archivo']['type'];
        $tamano = $_FILES['archivo']['size'];
        $temp = $_FILES['archivo']['tmp_name'];
        //Se comprueba si el archivo a cargar es correcto observando su extensión y tamaño
        if (!((strpos($tipo, "gif") || strpos($tipo, "jpeg") || strpos($tipo, "jpg") || strpos($tipo, "png")) && ($tamano < 2000000))) {
            echo '<div><b>Error. La extensión o el tamaño de los archivos no es correcta.<br/>
            - Se permiten archivos .gif, .jpg, .png. y de 200 kb como máximo.</b></div>';
        }
        else {
            //Si la imagen es correcta en tamaño y tipo
            //Se intenta subir al servidor
            if (move_uploaded_file($temp, 'images/'.$archivo)) {
                //Cambiamos los permisos del archivo a 777 para poder modificarlo posteriormente
                chmod('images/'.$archivo, 0777);
                //Mostramos el mensaje de que se ha subido co éxito
                echo '<div><b>Se ha subido correctamente la imagen.</b></div>';
                //Mostramos la imagen subida
                echo '<p><img src="images/'.$archivo.'"></p>';
            }
            else {
            //Si no se ha podido subir la imagen, mostramos un mensaje de error
            echo '<div><b>Ocurrió algún error al subir el fichero. No pudo guardarse.</b></div>';
            }
        }
    }
    }

        }
}
$publicacio = new Publicacio(1);
$publicacio->consultaPost(1); 

?>
</body>
</html>
