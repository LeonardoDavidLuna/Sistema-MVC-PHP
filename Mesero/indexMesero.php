<?php session_start();

if (!isset($_SESSION['nombreusuario'])) {
	header('location:Views/login/login.php');
}else{

	require_once 'Model/enlaces.php';
	require_once 'Model/reservasModelMesero/reservasModelMesero.php';
	require_once 'Model/usuariosModelMesero/usuariosModelMesero.php';
	require_once 'Model/categoriasModelMesero/categoriasModelMesero.php';
	require_once 'Model/productosModelMesero/productosModelMesero.php';
	



	require_once 'Controller/reservasControllerMesero/reservasControllerMesero.php';
	require_once 'Controller/usuariosControllerMesero/usuariosControllerMesero.php';
	require_once 'Controller/categoriasControllerMesero/categoriasControllerMesero.php';
	require_once 'Controller/productosControllerMesero/productosControllerMesero.php';
	

	$index = new MvcControllerMesero();
	$index->plantillaMesero();
}