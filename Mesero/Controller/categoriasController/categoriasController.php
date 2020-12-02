<?php  
ob_start();

class CategoriasController {

  public function agregarCategoriasController(){

  	if (isset($_POST['agregarCategorias'])) {
  	   
  	   $datosController = array("nombrecategoria"=>$_POST['nombrecategoria']
  	   	                         );
  	   	                        

  	   $respuesta = CategoriasModel::agregarCategoriasModel($datosController,'categorias');

  	   if ($respuesta == 'success') {
  	   	 header('location:okCategorias');
  	   }else{
             header('location:categorias');
 		      }
  	}
  }



    public function getCategoriasController(){
      $respuesta = CategoriasModel::getCategoriasModel('categorias');

       foreach ($respuesta as $row) {
         echo '<tr> 
              <td align="center"> '. $row['nombrecategoria'].'</td>
              
              </tr>';
       }
    }     

}