<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="episunsa.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.jdo.Extent"%>
<% Persona persona = (Persona)request.getAttribute("user");%>
<% Extent<Persona> personas = (Extent<Persona>)request.getAttribute("personas");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"  href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/usuario.css">

   
	<script src="js/jquery-1.12.2.min.js"></script>
	<!--  <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>-->
	<script type="text/javascript">
	var select;
	var e_correo;
	var e_contrasenia;
	var key;
	
	function editar() 
	{	
		var nombre=$('#nombre'+select).val();
		var tipo=$('#tipo'+select).val();
		var correo=$('#correo'+select).val();
		var contrasenia=$('#contrasenia'+select).val();
		var dni=$('#dni'+select).val();
		var telefono=$('#telefono'+select).val();
		var genero=$('#genero'+select).val();
		var dia=$('#dia'+select).val();
		var mes=$('#mes'+select).val();
		var anio=$('#anio'+select).val();
		
		$.post('editar',{
			nombre:nombre,
			correo:correo,
			contrasenia:contrasenia,
			dni:dni,
			telefono:telefono,
			genero:genero,
			dia:dia,
			mes:mes,
			anio:anio,
			tipo:tipo,
			e_correo:e_correo,
			e_contrasenia:e_contrasenia,
			key:key
			}, function() {
				$(location).attr('href','usuarios'); 
			}
		);
		alert("Edicion completa!");
	}
	function myFunction(id,k) 
	{
		select = id;
		e_correo=$('#correo'+select).val();
		e_contrasenia=$('#contrasenia'+select).val();
		key=k;
	    document.getElementById("pres").innerHTML = "Presionaste el boton "+ select;
	    document.getElementById("id_mostrar").innerHTML = "key del dato: "+ k;
	}
	
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
							<li class="active dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Usuarios <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="registro.usuario">Nuevo Usuario</a></li>
									<li class="divider"></li>
									<li class="active" ><a href="usuarios">Ver Usuarios</a></li>
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
							    	 container: 'body'
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
				<h3>USUARIOS</h3>
				<br>
			</article>
		</section>
		<section class="  articulo-g main row">
		<div class="articulo-t col-xm-12 col-sm-12 col-md-4 col-lg-4" >
		<br>
		<br>
			<ul class="nav nav-pills nav-stacked" style="background-color: white;">
			  <li role="presentation" class="active"><a href="#">Todos</a></li>
			  <li role="presentation"><a href="#">Administradores</a></li>
			  <li role="presentation"><a href="#">Doctores</a></li>
			  <li role="presentation"><a href="#">Pacientes</a></li>
			</ul>	
			    
			</div>
		 <br>
			<div class="articulo-t col-xm-12 col-sm-12 col-md-7 col-lg-7 col-md-offset-1 col-sm-offset-1" style="text-align: center;">
			
			<div class="  articulo-g main row" >
			<div class="articulo-t col-xm-12 col-sm-12 col-md-10 col-lg-10 col-md-offset-1 col-sm-offset-1">
				<div class="input-group">
			      
			      <input type="text" class="form-control" placeholder="Buscar...">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button">Ir!</button>
			      </span>
			    </div>
			</div>
			</div>
			  <br>
			  <br>  
			    <div>
			    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<%int i=1; %>
					  <%for (Persona p : personas) {%>
					  <div class="panel panel-default" >
					    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white;">
					      <h4 class="panel-title" >
					        <a class="title-esp collapsed" onclick="myFunction(<%=i%>,<%=p.getKey()%>)" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<%=i%>" aria-expanded="false" aria-controls="collapseOne">
					          <%=p.getNombre()%> 
					        </a>
					        
					      </h4>
					    </div>
					    <div id="collapse<%=i%>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="text-justify panel-body">
					      <br>
					      <table class="table table-striped">
					      <tr>
					      <td> <p><strong>Tipo de Usuario: </strong></p></td>
					      <td> <p> <%=p.getTipo()%></p></td>
					      </tr>
					      <tr>
					      <td> <p><strong>Numero de DNI: </strong></p></td>
					      <td><p> <%=p.getDni()%></p></td>
					      </tr>
					      <tr>
					      <td><p><strong>Correo Electronico: </strong></p></td>
					      <td><p><%=p.getCorreo()%></p></td>
					      </tr>
					      <tr>
					      <td> <p><strong>Numero Telefonico: </strong><p></td>
					      <td><p> <%=p.getTelefono()%></p></td>
					      </tr>
					      <tr>
					      <td> <p><strong>Contraseña: </strong><p></td>
					      <td><p> <%=p.getContrasena()%></p></td>
					      </tr>
					      <tr>
					      <td> <p><strong>Genero: </strong></p></td>
					      <td><p> <%=p.getGenero()%></p></td>
					      </tr>
					      <tr>
					      <td> <p><strong>Fecha de Nacimiento: </strong></p></td>
					      <td><p> <%=p.getNacDia()%> / <%=p.getNacMes()%> / <%=p.getNacAnio()%></p></td>
					      </tr>
							</table>
					      </div>
					      <div>
					      <hr>
					      <button id="btn-editar<%=i%>" class="btn btn-success" type="button" data-toggle="modal" data-target="#editar<%=i%>">Editar</button>
					        <button id="btn-eliminar<%=i%>" class="btn btn-danger" type="button">Eliminar</button>
					       	<br>
					        <br>
					      </div>
					    </div>
					  </div>
					  <div class="modal-esp">
					  
					  <div class="modal fade" id="editar<%=i%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="exampleModalLabel">Editar Usuario- <%=p.getNombre()%></h4>
						      </div>
						      <div class="modal-body">
						        <form>
						          <div class="form-group">
						            <p><label for="message-text" class="control-label">Nombre del Usuario:</label></p>
						            <p><input type="text" id="nombre<%=i%>" size="30" value ="<%=p.getNombre()%>"></p>
						            <p><label for="message-text" class="control-label">Tipo de Usuario:</label></p>
						            <p><select id="tipo<%=i%>">
						            <%if(p.getTipo().equalsIgnoreCase("Paciente")){
						            	System.out.println("paciente");%>
						            	<option selected="selected" value="Paciente">Paciente</option>
						            	<option value="Doctor">Doctor</option>
						            	<option value="Administrador">Administrador</option>
						            <%} else
						            	if(p.getTipo().equalsIgnoreCase("Doctor")){
						            	System.out.println("doctor");%>
						            	<option value="Paciente">Paciente</option>
						            	<option value ="Doctor" selected="selected">Doctor</option>
						            	<option value="Administrador">Administrador</option>
						            <%} else{
						            	System.out.println("admin");%>
						            	<option value="Paciente">Paciente</option>
						            	<option value ="Doctor">Doctor</option>
						            	<option value="Administrador" selected="selected">Administrador</option>
						            <%} %>
						            </select></p>
						            <p><label for="message-text" class="control-label">Numero de DNI:</label></p>
						            <p><input type="text" id="dni<%=i%>" size="30" value ="<%=p.getDni()%>"></p>
						            <p><label for="message-text" class="control-label">Correo Electronico:</label></p>
						            <p><input type="text" id="correo<%=i%>" size="30" value ="<%=p.getCorreo()%>"></p>
						            <p><label for="message-text" class="control-label">Numero Telefonico:</label></p>
						            <p><input type="text" id="telefono<%=i%>" size="30" value ="<%=p.getTelefono()%>"></p>
						            <p><label for="message-text" class="control-label">Contraseña:</label></p>
						            <p><input type="text" id="contrasenia<%=i%>" size="30" value ="<%=p.getContrasena()%>"></p>
						            <p><label for="message-text" class="control-label">Genero:</label></p>
						            <p><select id="genero<%=i%>">
						            <%if(p.getGenero().equalsIgnoreCase("Masculino")){ %>
						            	<option value="Femenino">Femenino</option>
						            	<option value="Masculino" selected>Masculino</option>
						            <%}
						            else{%>
						            	<option value="Femenino" selected>Femenino</option>
						            	<option value="Masculino">Masculino</option>
						            <%} %>
						            </select>></p>
						            <p><label for="message-text" class="control-label">Fecha de Nacimiento:</label></p>
						            <p><input type="text" id="dia<%=i%>" size="3" value ="<%=p.getNacDia()%>">/<input type="text" id="mes<%=i%>" size="3" value ="<%=p.getNacMes()%>">/<input type="text" id="anio<%=i%>" size="3" value ="<%=p.getNacAnio()%>"></p>
						          </div>
						        </form>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
						        <button type="button" onclick="editar()" class="btn btn-primary">Guardar</button>
						      </div>
						    </div>
						  </div>
						</div>
						
					  </div>
					  <%i++;}%>
					</div>
			    </div>
			  <p id="pres"></p>
			  <p id="id_mostrar"></p>
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