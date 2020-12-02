
 <div class="container"><br>
 
<div class="card">
<div class="row">
  <div class="col-md-8">  
    <ol class="breadcrumb">
       <li class="breadcrumb-item active"><i class="fa fa-list"> </i> LISTADO DE RESERVAS </li>
    </ol>
  </div>
    <div class="col-md-4">  
     <div class="alert alert-success" role="alert">
         Reservas Pendientes: <strong>
                <?php $vistaReservas = new MvcController();
                 $vistaReservas->totalReservasController();
           ?>                 </strong>
    </div>
  </div>
    <br><br><br>
    <div class="col-md-7">
    <!--
     <form method="post" class="form-control" action="index.php?action=buscarReservas">  
      <input type="text" class="form-control" id="datepicker" name="buscar" placeholder="Buscar Reservas por Fechas" required=""><br>
       <input type="submit" name="submit" class="btn btn-info btn-sm" value="Buscar">
    </form>
    -->
  </div>


  <div class="card-block">
    <p class="card-text">
       <table class="table table-bordered">
    <thead class="thead">
       <tr>
            <td align="center">Cliente</td>
            <td align="center">No. de Comensales</td>
            <td align="center">Teléfono</td>
            <td align="center">Día</td>
            <td align="center">Hora</td>
            <td align="center">Observaciones</td>
      </tr>
          </thead>

    <tbody>
      <?php 
        $vistaUsuario = new MvcController();
        //Consultar
        $vistaUsuario->getReservasController();
        //Borrar
        
       ?>
    </tbody>
  </table>
</div>
    </p>
</div>
  
  </div>
</div>
 </div>

</div>


