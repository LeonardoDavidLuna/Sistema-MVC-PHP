
<div class="modal fade" id="bebidas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar Pedido</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post">
        <div class="row">  
        
        <!--ENTREMES-->
        <div class="col-md-6">
         <?php  $consul = $conexion->query("SELECT * FROM usuarios");  ?>

            <?php foreach ($consul as $key): ?>
              <input type="hidden" name="usuario" value="<?php echo $key['idusuario'] ?>">
            <?php endforeach ?>
             <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'ENTREMES'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >ENTREMES</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>

              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
        
        </div>
        <!-- -->
<br>
    <!-- SOPAS Y CREMAS -->
    
     <div class="col-md-6">
             <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'SOPAS Y CREMAS'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value="0"  required="" >SOPAS Y CREMAS</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>
              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
      </div>
         <!-- -->
          
          
          
        
        <!-- ENSALADAS -->
        <div class="col-md-6">
        <br><br>
     <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'ENSALADAS'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]" required="">
           <option value="0"  required="" >ENSALADAS</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>
              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
        </div>
        <!-- -->
        
        <!--PASTAS-->
         <div class="col-md-6">
        <br><br>
     <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'PASTAS'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value="0"  required="" >PASTAS</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>
              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
        </div>
        <!-- -->
       
       <!--ESPECIALIDADES-->
         <div class="col-md-6">
        <br><br>
     <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'ESPECIALIDADES'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value="0"  required="" >ESPECIALIDADES</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>
              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
        </div>
        <!-- -->
        
        <!--PLATOS FUERTES-->
         <div class="col-md-6">
        <br><br>
     <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'PLATOS FUERTES'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value="0"  required="" >PLATOS FUERTES</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>
              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
        </div>
        <!-- -->
        
        <!-- POSTRES -->
           <div class="col-md-6">
        <br><br>
     <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'POSTRES'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value="0"  required="" >POSTRES</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>
              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
        </div>
        <!-- ------ ----->
        
        <!--CAFÉS-->
         <div class="col-md-6">
        <br><br>
     <?php             
            $consul = $conexion->query("SELECT * FROM productos pro JOIN categorias cat ON pro.idcategoria = cat.idcategoria WHERE nombrecategoria= 'CAFES'  order by nombreproducto asc");      
            ?>
          <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value="0"  required="" >CAFES</option> 
                <?php foreach ($consul as $fila): ?>
             <option value="<?php echo $fila['idproducto']. '-' .  $fila['precio'] ?>"> <?php echo ucwords($fila['nombreproducto'])?> 
            </option>
              <?php endforeach ?>
        </select>
        <!--
        <select class="form-control chosen-select" id="idcategoria" name="producto[]">
           <option value=""  required="" >CANTIDAD</option> 
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>           
        </select>-->
        </div>
        <!-- -->
        
        
        
        
       
      </div>
       


         <input type="hidden" name="fecha" value="<?php echo  date('d-m-Y') ?>">
      <div class="modal-footer">
        
        <button type="submit" name="agregarBebidas" id="agregarBebidas" class="btn btn-primary">Agregar</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
      </div>
     </form>
    </div>
  </div>
</div>
 </div>