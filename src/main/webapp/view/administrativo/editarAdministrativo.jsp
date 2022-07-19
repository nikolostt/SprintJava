<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<!-- Anexa las librer�as de la carpeta "lib" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">

<head>

	<link rel="icon" href="https://i.postimg.cc/pXQs0jJC/Whats-App-Image-2022-07-19-at-12-34-12-PM.jpg">

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- CSS Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<style>
		<%@include file="/static/css/estilo.css" %>
	</style>
   <title>editarAdministrativo</title>
</head>

<body>
	
	<%@ include file="menuAdministrativo.jsp"%>
	
	<br>
	
	<h1>Editar administrativo</h1>
	
	<br>

	<form action="${pageContext.request.contextPath}/EditarAdministrativo" method="post" class="form col-6">
		
		<input type="hidden" id="idAdministrativo" name="idAdministrativo" value="${administrativo.getIdAdministrativo()}">		
		
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Nombre de usuario</label>
			<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nombreUsuario" value="${administrativo.getNombreUsuario()}">
			<div id="emailHelp" class="form-text"></div>
		</div>
		
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Fecha de nacimiento</label>
			<input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="fechaNacimiento" value="${administrativo.getFechaNacimiento()}">
			<div id="emailHelp" class="form-text"></div>
			
		</div>
		
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">RUN</label>
			<input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="run" value="${administrativo.getRun()}">
			<div id="emailHelp" class="form-text-color=white">Ingrese RUN sin puntos, ni gui�n, ni d�gito verificador.</div>
		</div>
		
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Contrase�a</label>
			<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="clave" value="${administrativo.getClave()}">
			<div id="emailHelp" class="form-text"></div>
		</div>
		
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">�rea</label>
			<input type="text" class="form-control" id="exampleInputPassword1" name="area" value="${administrativo.getArea()}">
		</div>
		
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Experiencia previa</label>
			<input type="text" class="form-control" id="exampleInputPassword1" name="experienciaPrevia" value="${administrativo.getExperienciaPrevia()}">
		</div>
		
		<button type="submit" class="btn btn-primary">Guardar cambios</button>
	</form>

	<!-- JavaScript Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>   
</body>

</html>
