<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="episunsa.*"%>
<%@ page import="java.util.*"%>
<%
	Persona persona = (Persona)request.getAttribute("user");
%>
 <% String [] meses={"enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"};%>
 <% int ini=1900, fin=2015; %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"  href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/especialidad.css">

   
	<script src="js/jquery-1.12.2.min.js"></script>
<title>Registro</title>
<script type="text/javascript">
$(document).ready(function(){
	$('.popover-markup>.login').popover({
	    html: true,
	   
	    content: function () {
	        return $(this).parent().find('.popover-login').html();
	    }
	});

	$(document).on("click", "#boton-login", function () {
	   
	    var usuario=$('.popover #usuario').val();
		var contrasena=$('.popover #contrasena').val();
	
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
		
	    return false;
	});
	
	 
	
	
		
	//registro 
	$("#boton-reg").click(function(){
		
		var nombre=$('#nombre').val();
		var descripcion=$('#descripcion').val();
		
		$.post('guardar.especialidad',{
			nombre:nombre,
			descripcion:descripcion
			
			}, function(responseText) {
				$('#tabla').html(responseText);
			}
					
		);
		
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
						<a href="inicio" class=" titulo-p navbar-brand ">CLINICA LAS AMERICAS</a>
						<img class=" navbar-brand" alt="cruz" src="img/cruz1.png">
						
						
					</div><!-- fin navbar header-->
					
					<!-- navbar header menu -->
					<div class="collapse navbar-collapse" id="navbar1">
						<!-- navbar izquierda -->
						<ul class="nav navbar-nav">
							<li class=" dropdown">
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
							
							<li class="active dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Especialidades<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="active"><a href="registro.especialidad">Nueva Especialidad</a></li>
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

<br>

	<div class="  container ">
	<div class=" col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3 section-p">
		<section class="  articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
		
			<article class="col-xs-12 col-sm-10 col-md-8 col-sm-offset-1 col-md-offset-2 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				
				<br>
				<h2 class="text-center">Nueva Especialidad</h2>
				<br>
				<br>
				<input type="text" class="form-control" id="nombre" placeholder="Nombre de la Especialidad">
				<br>
				<textarea class="form-control" rows="15" id="descripcion" placeholder="Ingrese una Descripcion"></textarea>
				<br>
				
				  <button id="boton-reg" type="button" class="btn btn-primary btn-lg btn-block">Registrar</button>
					<div id="tabla"></div>
  				
				<hr>
				
				<br>
				<br>
				
			</article>
		
		</section>
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
	<!--  <script src="js/jquery-1.12.2.min.js"></script>-->
</body>
</html>