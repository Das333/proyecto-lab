<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*;" %>
 <% String [] meses={"enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"};%>
 <% int ini=1900, fin=2015; %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"  href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">

   
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
		var correo=$('#correo').val();
		var contrasenia=$('#contrasenia').val();
		var dni=$('#dni').val();
		var telefono=$('#telefono').val();
		var genero=$('#genero').val();
		var dia=$('#dia').val();
		var mes=$('#mes').val();
		var anio=$('#anio').val();
		var tipo=$('#tipo').val();
	
		
		$.post('save',{
			nombre:nombre,
			correo:correo,
			contrasenia:contrasenia,
			dni:dni,
			telefono:telefono,
			genero:genero,
			dia:dia,
			mes:mes,
			anio:anio,
			tipo:tipo
			}, function(responseText) {
				$('#tabla').html(responseText);
			}
		);
		alert("Registro completo!");
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
					
					<div class="collapse navbar-collapse" id="navbar1">
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Atencion Medica <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a id ="boton-prueba" href="#">Horarios Disponibles</a></li>
									<li class="divider"></li>
									<li><a href="#">Separar una Cita</a></li>
									
								</ul>
							</li>
							<li><a href="#">Encuentra un Medico</a></li>
							
							<li><a href="#">Especialidades</a></li>
							<li><a href="#">Contacto</a></li>
						</ul>
						
						
						
						<ul class="nav navbar-nav navbar-right">
						<li ><a href="registro.jsp">Registrarse</a></li>
						<li>
						<div class=" popover-markup ">
						<a href="#" class="login"  data-container="body" data-toggle="popover" data-placement="bottom"   >Iniciar Sesion<span class="caret"></span></a>
						<div id="popover_content_wrapper"  style="display: none;" >
								<div class="popover-login" >
										<h5 class='text-center'>¿Tienes cuenta?</h5> 
										<br>
										<input id="usuario" type="text" class="form-control" placeholder="Correo o teléfono">
										<br>
										<input id="contrasena"  type="password" class="form-control" placeholder="Contraseña">
										<br>
										 <button id="boton-login" type="button" class="btn btn-primary btn-md btn-block">Iniciar sesion</button>
										 <hr>
										 <h5 class="text-center">¿Eres nuevo?</h5>
										 <a style="text-decoration: none;" href="registro.jsp"><button  type="submit"  class="btn btn-info btn-md btn-block">Regístrate</button></a>
										<br>
								</div>
							</div>
						</div>
						</li>
						
						</ul>
						
							
	
								
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
						
					</div>
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
				<h2 class="text-center">Únete a Clinica Las Americas</h2>
				<br>
				<br>
				<input type="text" class="form-control" id="nombre" placeholder="Nombre completo">
				<br>
				<input type="email" class="form-control" id="correo" placeholder="Correo electrónico">
				<br>
				<input type="password" class="form-control" id="contrasenia" placeholder="Contraseña">
				<br>
				<input type="text" class="form-control" id="dni" placeholder="Numero de DNI">
				<br>
				<input type="tel" class="form-control" id="telefono" placeholder="Telefono">
				<input type="hidden" class="form-control" id="tipo" placeholder="Tipo" value="Administrador">
				<br>
					<select  id="genero" name="genero" style="padding-left: 6px;" class="form-control">
						<option value="0">Selecciona tu género</option>
						<option value="femenino">Femenino</option>
						<option value="masculino">Masculino</option>
					</select>
				
				<br>
					<div class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-xs-12 col-xs- col-sm-3 col-md-3">Cumpleaños</label>
							
							<div class=" col-xs-4 col-sm-3 col-md-3 ">
							<select id="dia" style="padding-left: 3px;padding-right: 0px;" class="form-control">
								<option value="0">Dia</option>
								<% 
								int i;
								for(i=1;i<=31;i++){  %>
								<option value='<%=i%>'><%=i%></option>
								<%}%>
							</select>
							</div>
							
							<div class="col-xs-4 col-sm-3 col-md-3 reducir-m">
							<select id="mes" style="padding-left: 3px;padding-right: 0px;" class="form-control">
								<option value="0" >Mes</option>
								<% 
								int j;
								for(j=0;j<meses.length;j++){  %>
								<option value='<%=j+1%>'><%=meses[j]%></option>
								<%}%>
							</select>
							</div>
							
							<div class="col-xs-4 col-sm-3 col-md-3">
							<select id="anio" style="padding-left: 3px;padding-right: 0px;" class="form-control">
								<option value="0" >Año</option>
								<%
								int k;
								for(k=ini;k<=fin;k++){ %>
								<option value='<%=k%>'><%=k%></option>
								<%}%>
							</select>
							</div>
							
						</div>
				 
				  	</div>
				  <br>
				  <button id="boton-reg" type="button" class="btn btn-primary btn-lg btn-block">Regístrate</button>
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
	<footer>
		<div class="container">
			
		</div>
		
	</footer>
    
    <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
	<!--  <script src="js/jquery-1.12.2.min.js"></script>-->
</body>
</html>