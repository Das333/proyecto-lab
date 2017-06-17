<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="episunsa.*"%>
<%@ page import="java.util.*"%>
<%
	Persona persona = (Persona)request.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"  href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/horario.css">
   
	<script src="js/jquery-1.12.2.min.js"></script>
	<!--  <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>-->
	<script type="text/javascript">
	
	</script>
	
<title>Inicio</title>


</head>
<body>

<!-- navbar -->
	<div class=" container">
	
		<header>
			<nav class=" navbar navbar-custom navbar-fixed-top">
				<div class="container-fluid">
				<!-- navbar header principal -->
					<div class=" navbar-header ">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1">
						<span class="sr-only">Menu</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>
						<img class=" navbar-brand" alt="cruz" src="img/cruz1.png">
						<a href="inicio" class=" titulo-p navbar-brand ">CLINICA LAS AMERICAS</a>
						<img class=" navbar-brand" alt="cruz" src="img/cruz1.png">
						
						
					</div><!-- fin navbar header principal-->
					
					<!-- navbar header menu -->
					<div class="collapse navbar-collapse" id="navbar1">
						<!-- navbar izquierda -->
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Atencion Medica <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Horarios Disponibles</a></li>
									<li class="divider"></li>
									<li><a href="#">Separar una Cita</a></li>
									
								</ul>
							</li>
							<li ><a href="#">Encuentra un Medico</a></li>
							
							<li><a href="#">Especialidades</a></li>
							<li><a href="#">Contacto</a></li>
						</ul><!-- fin navbar izquierda --><h3>Kevin Sanchez Gomez, Marco Carpio Rojas</h3>
						
						
						<!-- navbar derecha -->
						<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
								<a href="#" class=" dropdown-toggle" data-toggle="dropdown" role="button"> &nbsp;&nbsp;<span class="glyphicon glyphicon-user"></span>&nbsp;</a>
								<ul class="dropdown-menu">
									<li><a href="perfil">Mi perfil</a></li>
									<li class="divider"></li>
									<li><a href="salir">Salir</a></li>
									
								</ul>
							</li>
							
							
						</ul><!-- fin navbar derecha -->
						
								
						
						
						<form action="" class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="buscar">
							</div>
						</form>
						
					</div><!-- fin navbar header menu -->
				</div>
			</nav>
		</header>
	</div>
<!-- fin navbar -->




	<div class="container">
	
		<section class="  articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
		
		
			<article class="articulo-t col-xm-12 col-sm-12 col-md-12 col-lg-12 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				<br>
				<h3>MI PERFIL</h3>
				<br>
			</article>
		
		
		</section>
		
		<section class="articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
		
			<div class="col-xm-12 col-sm-12 col-md-12 col-lg-12 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				<br>
					<div class="horario-head btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">HORA</button>
					  </div>
					  <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">LUNES</button>
					  </div>
					  <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">MARTES</button>
					  </div>
					  <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">MIERCOLES</button>
					  </div>
					  <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">JUEVES</button>
					  </div>
					   <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">VIERNES</button>
					  </div>
					</div>	
	
				
				<br>
			</div>
			<div class="horario-btn col-xm-12 col-sm-12 col-md-12 col-lg-12 ">
			<div class=" btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">6:00-6:15</button>
					</div>
					 <div class="btn-group popover-horario" role="group">
					    <button  type="button" class="btn btn-default cita-1" data-trigger="focus" data-container="body" data-toggle="popover"   data-placement="bottom">Disponible</button>
					</div>
					<div id="myPopoverContent" style="display: none;">
					
					<p><strong>Esp. </strong> Cardiologo</p>
					<p><strong>Dr. </strong> Juan Perez</p>
					<p><strong>Cita para el dia lunes a las 6:00 hrs.</strong></p>
					<button type="button" class="btn btn-success cita-confirmar">Separar Cita</button>
					</div>
					
					
					
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default cita-2"  data-trigger="focus" data-container="body" data-toggle="popover" data-placement="bottom">Disponible</button>
					</div>
					
					<div id="myPopoverContent-2" style="display: none;">
					
					<p><strong>Esp. </strong> Cardiologo</p>
					<p><strong>Dr. </strong> Carlos Perez</p>
					<p><strong>Cita para el dia martes a las 6:00 hrs.</strong></p>
					<button type="button" class="btn btn-success">Separar Cita</button>
					</div>
					
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-danger" disabled="disabled" style="color: white;">No disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
			</div>
			<div class="btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">6:15-6:30</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
			</div>
			<div class="btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">6:30-6:45</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
			
			
			</div>
			<div class="btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">6:45-7:00</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
			
			
			</div>
			<div class="btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">7:15-7:30</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
			
			
			</div>
			<div class="btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">7:30-7:45</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
			
			
			</div>
			<div class="btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">7:45-8:00</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
					 <div class="btn-group" role="group">
					    <button type="button" class="btn btn-default">Disponible</button>
					</div>
			
			
			</div>
			
	</div>
		
		</section>
		
		<div class="articulo-g row">
			<div class="col-sm-12 col-md-12">
			<h3>NOTICIAS</h3>
			</div>
		</div>
	
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<footer>
		<div class="container">
		
		</div>
		
	</footer>
    
      <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    
	<!--<script src="js/jquery-1.12.2.min.js"></script>-->
	<script type="text/javascript">
	$(function () {
		  $('.cita-1').popover({
			  content: $('#myPopoverContent').html(),
			  html: true,
			  container: 'body'
		  })
		    $('.cita-2').popover({
			  content: $('#myPopoverContent-2').html(),
			  html: true,
			  container: 'body'
		  })
		  
		   $('.cita-confirmar').popover({
			  content: $('#confirmar').html(),
			  html: true,
			  container: 'body'
		  })
		});
	
	
	</script>
</body>
</html>