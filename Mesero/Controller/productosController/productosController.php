<?php  
ob_start();

class ProductosController {

	public function getProductosController(){
		 $respuesta = ProductosModel::getProductosModel('productos');

       foreach ($respuesta as $row) {
         echo '<tr> 
              <td align="center"> '. $row['nombreproducto'].'</td>
              <td align="center"> '. $row['nombrecategoria'].'</td>
              <td align="center"> $'. $row['precio'].'</td>  
              
              </tr>';
       }
	}

   
   
}