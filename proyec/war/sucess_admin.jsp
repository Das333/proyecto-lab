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
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Usuarios <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="registro.usuario">Nuevo Usuario</a></li>
									<li class="divider"></li>
									<li><a href="usuarios">Ver Usuarios</a></li>
								</ul>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Horarios<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Ingresar Horario</a></li>
									<li class="divider"></li>
									<li><a href="#">Ver Horario</a></li>
								</ul>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Citas<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Nueva Cita</a></li>
									<li class="divider"></li>
									<li><a href="#">Ver Cita</a></li>
								</ul>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Especialidades<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="registro.especialidad">Nueva Especialidad</a></li>
									<li class="divider"></li>
									<li><a href="especialidades">Ver Especialidad</a></li>
								</ul>
							</li>
							
							
						</ul><!-- fin navbar izquierda -->
						
						
						<!-- navbar derecha -->
						<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Notificaciones</a></li>
						<li class="dropdown">
								<a href="#" class=" dropdown-toggle" data-toggle="dropdown" role="button"><%=persona.getNombre()%> &nbsp;&nbsp;<span class="glyphicon glyphicon-user"></span>&nbsp;</a>
								<ul class="dropdown-menu">
									<li><a href="perfil">Mi perfil</a></li>
									<li class="divider"></li>
									<li><a href="salir">Salir</a></li>
									
								</ul>
							</li>
							
							
						</ul><!-- fin navbar derecha -->
						
								
							<script>
							$(document).ready(function(){
							    $('[data-toggle="popover"]').popover({
							    	 container: 'body';
							    });   
							});
							</script>
						
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

<!-- inicio carousel -->
<div class="container">
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="img/medico_2.jpg"  alt="...">
      <div class="carousel-caption">
          <h3>CLINICA AREQUIPA</h3>
          <p class="textoborde">Somos institución comprometida con la persona y nuestro enfoque de calidad se fundamenta en el respeto por los valores, expectativas y necesidades de los pacientes y su familia, así como por los miembros de la organización y de la comunidad</p>
      </div>
      
    </div>
    <div class="item">
      <img src="img/medico_1.jpg" class="carousel-img" alt="...">
      <div class="carousel-caption">
          <h3>HORARIOS DE ATENCION</h3>
          <p class="textoborde">Ingresa para ver que horarios del mes actual estan disponibles para sacar una cita medica.</p>
      </div>
    </div>
    <div class="item">
      <img src="img/medico_3.jpg" alt="...">
      <div class="carousel-caption">
          <h3>ESPECIALIDADES</h3>
          <p class="textoborde">Revisa las diversas especialidades que dispone la clinica</p>
      </div>
    </div>
     <div class="item">
      <img src="img/noticias2.jpg" class="carousel-img" alt="...">
      <div class="carousel-caption">
          <h3>NOTICIAS</h3>
          <p class="textoborde">Informate sobre destintas enfermedades y prevenlas</p>
      </div>
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic"  role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div> 
</div><!-- Carousel -->
<br>

	<div class="container">
		<section class="  articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
		
			<article class="articulo-t col-xm-12 col-sm-12 col-md-12 col-lg-12 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				<h3>¿QUIENES SOMOS?</h3>
			</article>
		
		
		</section>
		
		<section class="articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
		
			<article class="col-xm-12 col-sm-7 col-md-8 col-lg-8 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				
				<br>
				<p class="text-justify">Clínica Arequipa es una entidad prestadora de salud, cuyo principal objetivo es entregar a nuestros pacientes y familias una atención integral, resolutiva y oportuna basada en la calidez, compromiso y los más altos estándares de calidad.</p>
				<p class="text-justify">Nuestra atención de salud está basada en la mística vocacional y el compromiso de los que forman el equipo de trabajo, entregando servicios de excelencia con eficiencia, buena percepción de la calidad y uso eficaz de la tecnología.</p>
				<hr>
				<h3>Misión</h3>
				<br>
				<p class="text-justify">Clínica Las Americas es una institución de salud que tiene como misión brindar una atención de calidad diferenciada, con trato humanista, responsable; ofreciendo una infraestructura moderna con tecnología de avanzada.</p>
				<hr>
				<h3>Visión</h3>
				<br>
				<p class="text-justify">La Clínica Americana buscará ser una institución modelo en servicios de salud, con pacientes satisfechos por la atención ofrecida con calidad y calidez, constituyéndose así en un buen referente entre los establecimientos de salud sin fines de lucro.</p>
				<hr>
				<img src="img/vision.jpg" width="100%"  alt="vision" >
				<br>
				<br>
				
			</article>
			
				
			<div class="col-xm-12 col-sm-4 col-md-3 col-lg-3 col-md-offset-1 col-sm-offset-1">
				<br>
				<div id="botones-inicio">
				<a href="#" title="Horarios" class="botones" id="boton-1"></a>
				</div>
				<div id="botones-inicio">
				<a href="#" title="Medicos" class="botones" id="boton-2"></a>
				</div>
				<div id="botones-inicio">
				<a href="#" title="Citas" class="botones" id="boton-3"></a>
				</div>
				<div id="botones-inicio">
				<a href="especialidades" title="Especialidades" class="botones" id="boton-4"></a>
				</div>
				</div>
		
		</section>
		
		<div class="articulo-g row">
			<div class="col-sm-12 col-md-12">
			<h3>NOTICIAS</h3>
			</div>
		</div>
		
		<div class=" articulo-g row">
			<div class="col-xm-12 col-sm-4 col-md-4">
			   <div class="thumbnail">
			      <img src="img/noticia.jpg" alt="imagen">
			      <div class="caption">
			          <h3>Titulo 1</h3>
			              <p>Donec nec justo eget felis facilisis fermentum. 
			               Aliquam porttitor mauris sit amet orci...</p>
			          <p>
			          <a href="#" class="btn btn-info">Leer mas</a> 
			          </p>
			      </div>
			   </div>
			 </div>
			 <div class="col-xm-12 col-sm-4 col-md-4">
			   <div class="thumbnail">
			      <img src="img/noticia.jpg" alt="imagen">
			      <div class="caption">
			          <h3>Titulo 1</h3>
			              <p>Donec nec justo eget felis facilisis fermentum. 
			               Aliquam porttitor mauris sit amet orci...</p>
			          <p>
			          <a href="#" class="btn btn-info">Leer mas</a> 
			          </p>
			      </div>
			   </div>
			 </div>
			 <div class="col-xm-12 col-sm-4 col-md-4">
			   <div class="thumbnail">
			      <img src="img/noticia.jpg" alt="imagen">
			      <div class="caption">
			          <h3>Titulo 1</h3>
			              <p>Donec nec justo eget felis facilisis fermentum. 
			               Aliquam porttitor mauris sit amet orci...</p>
			          <p>
			         <a href="#" class="btn btn-info">Leer mas</a> 
			          </p>
			      </div>
			   </div>
			 </div>
		</div>
	</div>
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
</body>
</html>