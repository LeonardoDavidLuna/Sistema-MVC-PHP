<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../assets/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../../assets/css/estilos.login.css">
	<title>Logeo</title>
</head>

<body>

	<div class="row">
		<div class="col-md-12">
			<div class="conta">
				<h1>Restaurante&nbsp;&nbsp;&nbsp;<i class="fa fa-cutlery"></i> El Faisán</h1>

				<form class="" action="/RESTAURANTE/Views/login/login.php" method="post">
					<hr>
					<div class="form-group">
						<i class="fa fa-user"></i> <label for="nombreusuario"><b>Usuario</b></label>	    
						<input type="text" name="nombreusuario" class="form-control" placeholder="Nombre de Usuario ">
					</div>
					<div class="form-group">
						<i class="fa fa-unlock-alt"></i> <label for="password"><b> Contraseña</b></label> 
						<input type="password" name="password" class="form-control" placeholder="Contraseña de Usuario">
					</div><br>
					<input type="submit" name="submit" value="ENTRAR" class="form-control btn btn-danger">

					<?php if (!empty($enviar)):
					?>
						<div class="enviar">
							<?php echo $enviar;  ?>
						</div>
						<?php echo $enviado; ?> 
					<?php endif; ?>
					<br>
					<?php if(!empty($error)): ?>
						<br>
						<div class="error">                
							<?php echo $error ?>
						</div>
					<?php endif; ?>
				</form>
			</div>
		</div>
	</div>
</body>
</html>