<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="episunsa.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.jdo.Extent"%>
<%
	Persona persona = (Persona)request.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"  href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/usuario.css">
<link rel="stylesheet" href="css/perfil.css">

   
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
							<li class=" dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Usuarios <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="registro.usuario">Nuevo Usuario</a></li>
									<li class="divider"></li>
									<li  ><a href="usuar<h3>Kevin Sanchez Gomez, Marco Carpio Rojas</h3>ios">Ver Usuarios</a></li>
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
							
							<li class=" dropdown">
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



	<div class="container">
	
		<section class="  articulo-g main row"> <!-- row necesario para dividir la fila del a seccion en columnas -->
	
			<article class="articulo-t col-xm-12 col-sm-12 col-md-12 col-lg-12 "> <!-- md=mediano otros(xm,sm,md,lg) col-md-offset-3=mueve 3 espacios la culumna-->
				<br>
				<br>
				<h3>Mi Perfil </h3>
				
			</article>
		</section>
		<section class="  articulo-g main row">
		<div class="articulo-t col-xm-12 col-sm-12 col-md-4 col-lg-4" >
		<br>
		<br>
		<br>
		<br>
			<a href="#" class="thumbnail">
      		<img src="img/perfil.jpg" alt="...">
   			 </a>
			    
			</div>
		 <br>
			<div class="articulo-t col-xm-12 col-sm-12 col-md-7 col-lg-7 col-md-offset-1 col-sm-offset-1" style="text-align: center;">
			
			  <br>
			  <br>  
			    <div>
			    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			
					  <div class="panel panel-default" >
					    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
					      <h4 class="panel-title" >
					        <a class="title-esp collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-nombre" aria-expanded="false" aria-controls="collapseOne">
					          Nombre: <%=persona.getNombre()%> 
					        </a>
					        
					      </h4>
					    </div>
					    <div id="collapse-nombre" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="text-justify panel-body">
					      <br>
					     <div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">Nombre</span>
						  <input type="text" class="form-control" placeholder="Nombre completo" value="<%=persona.getNombre()%>" aria-describedby="basic-addon1">
						</div>
					      </div>
					      <div>
					      <hr>
					        <button id="btn-cancelar" class="btn btn-primary" type="button">Cancelar</button>
					        <button id="btn-guardar" class="btn btn-success" type="button">Guardar</button>
					       	<br>
					        <br>
					      </div>
					    </div>
					  </div>
					  
					  <div class="panel panel-default" >
					    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
					      <h4 class="panel-title" >
					        <a class="title-esp collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-correo" aria-expanded="false" aria-controls="collapseOne">
					          Correo: <%=persona.getCorreo()%> 
					        </a>
					        
					      </h4>
					    </div>
					    <div id="collapse-correo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="text-justify panel-body">
					      <br>
					        <div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">Correo</span>
						  <input type="text" class="form-control" placeholder="Correo electronico" value="<%=persona.getCorreo()%>" aria-describedby="basic-addon1">
						</div>
					      </div>
					      <div>
					      <hr>
					        <button id="btn-cancelar" class="btn btn-primary" type="button">Cancelar</button>
					        <button id="btn-guardar" class="btn btn-success" type="button">Guardar</button>
					       	<br>
					        <br>
					      </div>
					    </div>
					  </div>
					  
					  <div class="panel panel-default" >
					    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
					      <h4 class="panel-title" >
					        <a class="title-esp collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-telefono" aria-expanded="false" aria-controls="collapseOne">
					          <strong class="text-left" >Telefono:</strong><span class="text-right"> <%=persona.getTelefono()%></span> 
					        </a>
					        
					      </h4>
					    </div>
					    <div id="collapse-telefono" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="text-justify panel-body">
					      <br>
					      <div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">Telefono</span>
						  <input type="text" class="form-control" placeholder="Numero Telefonico" value="<%=persona.getTelefono()%>" aria-describedby="basic-addon1">
						</div>
					     </div>
					      <div>
					      <hr>
					        <button id="btn-cancelar" class="btn btn-primary" type="button">Cancelar</button>
					        <button id="btn-guardar" class="btn btn-success" type="button">Guardar</button>
					       	<br>
					        <br>
					      </div>
					    </div>
					  </div>
					  
					  <div class="panel panel-default" >
					    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
					      <h4 class="panel-title" >
					        <a class="title-esp collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-dni" aria-expanded="false" aria-controls="collapseOne">
					          Numero de DNI: <%=persona.getDni()%> 
					        </a>
					        
					      </h4>
					    </div>
					    <div id="collapse-dni" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="text-justify panel-body">
					      <br>
					      <div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">Numero de DNI</span>
						  <input type="text" class="form-control" placeholder="Nombre completo" value="<%=persona.getDni()%>" aria-describedby="basic-addon1">
						</div>
					      </div>
					      <div>
					      <hr>
					        <button id="btn-cancelar" class="btn btn-primary" type="button">Cancelar</button>
					        <button id="btn-guardar" class="btn btn-success" type="button">Guardar</button>
					       	<br>
					        <br>
					      </div>
					    </div>
					  </div>
					  
					  <div class="panel panel-default" >
					    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
					      <h4 class="panel-title" >
					        <a class="title-esp collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-tipo" aria-expanded="false" aria-controls="collapseOne">
					          Tipo de Usuario: <%=persona.getTipo()%> 
					        </a>
					        
					      </h4>
					    </div>
					    <div id="collapse-tipo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="text-justify panel-body">
					      <br>
					       El tipo de usuario no se puede modificar!
					      </div>
					      <div>
					      <hr>
					        <button id="btn-cancelar" class="btn btn-primary" type="button">Cancelar</button>
					        
					       	<br>
					        <br>
					      </div>
					    </div>
					  </div>
					  
					  <div class="panel panel-default" >
					    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
					      <h4 class="panel-title" >
					        <a class="title-esp collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="false" aria-controls="collapseOne">
					          Genero: <%=persona.getGenero()%> 
					        </a>
					        
					      </h4>
					    </div>
					    <div id="collapse" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="text-justify panel-body">
					      <br>
					        <div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">Genero</span>
						  <input type="text" class="form-control" placeholder="Ingrese genero" value="<%=persona.getGenero()%>" aria-describedby="basic-addon1">
						</div>
					      </div>
					      <div>
					      <hr>
					        <button id="btn-cancelar" class="btn btn-primary" type="button">Cancelar</button>
					        <button id="btn-guardar" class="btn btn-success" type="button">Guardar</button>
					       	<br>
					        <br>
					      </div>
					    </div>
					  </div>
					
					</div>
			    </div>
			  
			    
			</div>
			
			
			</section>
			<br>
			<br>
	
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