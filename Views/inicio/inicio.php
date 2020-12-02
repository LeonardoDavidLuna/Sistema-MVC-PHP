<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../assets/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../../assets/css/estilos.login.css">
	<link rel="stylesheet" type="text/css" href="../../assets/css/styleinicio.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script  src="../../assets/js/slider.js"></script>

	<title>El Faisán</title>


</head>

<style>
.mySlides {display:none;}
</style>
<body>

<div class="row">
<div class="col-md-10">

</div>
<div class="col-md-2">
    <a href="../login/login.php"><input type="submit" name="submit" value="ENTRAR" class="form-control btn btn-danger"></a>
</div>     
<div class="conta">
           
           <center>
             <br>
              <h1>El Faisán&nbsp;&nbsp; <i class="fa fa-cutlery"></i> </h1>
           </center>
           
           
</div>


<div class="col-md-12">
    
    <div class="w3-content w3-display-container">
  <img class="mySlides" src="../../assets/img/men%C3%BA%201.jpg" style="width:100%">
  <img class="mySlides" src="../../assets/img/men%C3%BA%202.jpg" style="width:100%">
  
  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>


    
</div>   

</div>





<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>


</body>
</html>