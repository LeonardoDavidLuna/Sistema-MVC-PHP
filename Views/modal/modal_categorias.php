
  <div class="modal fade bd-example" id="categorias" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModalLabel">Nueva Categoría</h4>
        </div>
        <div class="modal-body">

          <form method="post">
          <div class="row">
            <div class="col-md-12">  
              <div class="form-group">
               <center> <label for="categoria-name" class="form-control-label">Nombre de la Categoría :</center></label>
       
                <input type="text" class="form-control" id="categoria-name" name="nombrecategoria" required="">
              </div>
            </div>

          </div>
         
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary" name="agregarCategorias">Agregar Categoría</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<?php  
$regis = new CategoriasController();
$regis->agregarCategoriasController();
?>