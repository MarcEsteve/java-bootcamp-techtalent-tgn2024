<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Spring MVC</title>
	</head>
	<body>
		<!-- el formulario enviará los datos a la url /procesarFormulario a través del método
		GET de HTTP -->
		<form action="procesarFormulario" method="GET">
			<!-- caja de texto donde se escribirá el nombre -->
			<input type="text" name="nombre" placeholder="Escribe tu nombre" />
			<input type="email" name="correo" placeholder="Escribe tu correo" />
			<!-- botón para enviar la información -->
			<input type="submit" />
		</form>
	</body>
</html>