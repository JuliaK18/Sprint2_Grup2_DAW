<?php
class Publicacio{
    private $id;
    private $dataPublicacio;
    private $censurat;
    private $idPost;
    private $idComentari;
    private $idUsuari;
    
    function __construct($id, $dataPublicacio, $censurat, $idPost, $idComentari, $idUsuari) {
        $this->id = $id;
        $this-> dataPublicacio = $dataPublicacio;
        $this-> censurat = $censurat;
        $this-> idPost = $idPost;
        $this-> idComentari = $idComentari;
        $this-> idUsuari = $idUsuari;
    }

    function eliminarPost($id){
        conectar();
        $query ="DELETE * from Publicacio where id.publicacio = '$id';";
        desconetar();
    }
    
    function consultaPost($linea){
        $resultat =$linea->fetch_assoc();
        return $resultat[$nom];
    }

}