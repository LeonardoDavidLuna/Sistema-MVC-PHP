<?php session_start();
	try 
    {
		$error = '';
		$enviar='';
		$enviado='';

		$conexion = new PDO('mysql:host=localhost;dbname=restaurant', 'root','');
		
    if ($_SERVER['REQUEST_METHOD'] == 'POST')
    {
			$nombreusuario = $_POST['nombreusuario'];
			$password = $_POST['password'];
     
            $sql = $conexion->prepare('SELECT * FROM usuarios WHERE nombreusuario = :nombreusuario AND 
     	                        password = :password');
            $sql->execute(array(':nombreusuario'=>$nombreusuario,
     	                  ':password'=>$password));

        $resultado = $sql->fetch();
        if ($resultado != false) 
        {
	      $_SESSION['nombreusuario'] = $nombreusuario;
	      $enviar .=  '<center> Bienvenido <br>'. ucwords($resultado['nombreusuario']). '</center> <br>';
            
            if($nombreusuario=="administrador")
            {
                $enviar .= '<meta http-equiv="refresh" content="4;url=../../index">';
            }else{
                $enviar .= '<meta http-equiv="refresh" content="4;url=../../Mesero/index">';
            }
          
	      $enviado .= '<center><span class="">Bienvenido al Sistema</span></center><br>';
        }else 
        {
            $error .= '<li class="alert alert-danger"> Los Datos ingresados son Incorrectos </li>';
   
        }

    }
	} catch (Exception $e) {
		echo "Error  de conexion a la base de datos.";
	}
	require 'login.view.php';
 ?>