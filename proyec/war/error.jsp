<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"  href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">

   
	<script src="js/jquery-1.12.2.min.js"></script>
<title>Error</title>
<script type="text/javascript">

	  
$(document).ready(function(){
	//login
	$("#boton-login").click(function(){
		var usuario=$('#usuario').val();
		var contrasena=$('#contrasena').val();
		 $.ajax({
	          url: "inicio",
	          type: "POST",
	          data: {
	          usuario: usuario,
	          contrasena:contrasena},
	          success: function(){
	              alert("success");
	              $(location).attr('href','inicio'); 
	          },
	          error:function(){
	              
	              $(location).attr('href','error.jsp'); 
	          }   
	        }); 
	});

});
</script>
</head>
<body>

<!-- navbar -->
	<div class=" container">
	
		<header>
			<nav class=" navbar navbar-custom navbar-fixed-top">
				<div class="container-fluid">
					<div class=" navbar-header ">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1">
						<span class="sr-only">Menu</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>
						<img class=" navbar-brand" alt="cruz" src="img/cruz1.png">
						<a href="inicio" class=" titulo-p navbar-brand ">CLINICA AREQUIPA</a>
						<img class=" navbar-brand" alt="cruz" src="img/cruz1.png">
						
						
					</div><!-- fin navbar header-->
					
				</div>
			</nav>
		</header>
	</div>
<!-- fin navbar -->

<br>
<br>
	<div class="  container ">
	<div class=" col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3 section-p">
	<div id="tabla">
	<br>
				 <div class="alert alert-danger">
    				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    				<strong><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;&nbsp;Error al iniciar sesion!</strong> El nombre de usuario y la contraseña que ingresaste no coinciden con nuestros registros. Por favor, revisa e intentalo de nuevo.
  					</div>
				</div>
		<section class="  articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
		
			<article class="col-xs-12 col-sm-10 col-md-8 col-sm-offset-1 col-md-offset-2 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				
				
				<br>
				<h2 class="text-center">Iniciar Sesion en Clinica Arequipa</h2>
				<br>
				<br>
				<input type="text" class="form-control" id="usuario" placeholder="Correo o Telefono">
				<br>
				<input type="password" class="form-control" id="contrasena" placeholder="Contraseña">
				
				  <br>
				  <button id="boton-login" type="button" class="btn btn-primary btn-md">Iniciar sesion</button>
				  <br>
				  <br>
				  <hr>
				  <a href="#">¿Olvidaste tu contraseña?</a>
				  <br>
				  <a href="registro.jsp">¿Eres nuevo? Regístrate ahora</a>
				  <br>
				
  				
				<hr>
				
				<br>
			
				
			</article>
		
		</section>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<footer>
		<div class="container">
		<div class="row">
		<div class="col xs-6">
		
		</div>
		<div class="col xs-6">
		<ul class="list-inline text-right">
		<li><a href="#">inicio</a></li>
		<li><a href="#">medicos</a></li>
		<li><a href="#">horarios</a></li>
		<li><a href="#">citas</a></li>
		</ul>
		</div>
		</div>
		</div>
		
	</footer>
    
    <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
	<!--  <script src="js/jquery-1.12.2.min.js"></script>-->
</body>
</html>