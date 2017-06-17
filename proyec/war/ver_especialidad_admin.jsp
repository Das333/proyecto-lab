<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="episunsa.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.jdo.Extent"%>
<%
	Persona persona = (Persona)request.getAttribute("user");
%>
<% Extent<Especialidad> especialidades = (Extent<Especialidad>)request.getAttribute("especialidades");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"  href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/especialidad.css">

   
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
							
							<li class="active dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Especialidades<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="registro.especialidad">Nueva Especialidad</a></li>
									<li class="divider"></li>
									<li class="active" ><a href="especialidades">Ver Especialidad</a></li>
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



	<div class="container">
	
		<section class="  articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
		
		
			<article class="articulo-t col-xm-12 col-sm-12 col-md-12 col-lg-12 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				<br>
				<h3>ESPECIALIDADES</h3>
				<br>
			</article>
			<div class="articulo-t col-xm-12 col-sm-12 col-md-6 col-lg-6 col-md-offset-3 col-sm-offset-3" style="text-align: center;">
				<div class="input-group">
			      
			      <input type="text" class="form-control" placeholder="Buscar...">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button">Ir!</button>
			      </span>
			    </div>
			    <br>
			    
			</div>
			<br>
			<br>
			<br>
			<div class="articulo-t col-xm-12 col-sm-12 col-md-8 col-lg-8 col-md-offset-2 col-sm-offset-2" style="text-align: center;">
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			<%int i=1; %>
			  <%for (Especialidad e : especialidades) {%>
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
			      <h4 class="panel-title">
			        <a class="title-esp collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<%=i%>" aria-expanded="false" aria-controls="collapseOne">
			          <%=e.getNombre()%> 
			        </a>
			        
			      </h4>
			    </div>
			    <div id="collapse<%=i%>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
			      <div class="text-justify panel-body">
			        <%=e.getDescripcion()%>
			      </div>
			      <div>
			      <hr>
			        <button id="btn-editar<%=i%>" class="btn btn-success" type="button" data-toggle="modal" data-target="#exampleModal<%=i%>">Editar</button>
			        <button id="btn-eliminar<%=i%>" class="btn btn-danger" type="button">Eliminar</button>
			        <br>
			        <br>
			      </div>
			    </div>
			  </div>
			  <div class="modal-esp">
			  <div class="modal fade" id="exampleModal<%=i%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="exampleModalLabel">Editar Especialidad - <%=e.getNombre()%></h4>
				      </div>
				      <div class="modal-body">
				        <form>
				          <div class="form-group">
				            <label for="message-text" class="control-label">Descripción:</label>
				            <textarea class="form-control" rows="10" id="message-text" placeholder="Ingrese una Descripcion"><%=e.getDescripcion()%></textarea>
				          </div>
				        </form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
				        <button type="button" class="btn btn-primary">Guardar</button>
				      </div>
				    </div>
				  </div>
				</div>
			  </div>
			  <%i++;}%>
			</div>
			
			</div>
			
		
		
		</section>
		
		
		
	
	
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
	<br>
	<br>
	<br>
	<br><br>
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