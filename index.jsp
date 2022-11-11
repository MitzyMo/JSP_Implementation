<%@page import="modelo.Persona" %>
<%@page language="java" contentType="text/html; charset=utf-8" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
	<title> Ejempo2 JSP </title>
</head>
<body>
<h1> Datos de Usuarios </h1>
	<form method="get" action= "index.jsp">
	<label>Nombre:</label>
	<input type="text" name="nombre"><br><br>
	<label>Edad:</label>
	<input type="number" name="edad" value="0"><br><br>
	<input type="submit" value="Enviar"><br><br>
	</form>
	<hr><br>
	
<%-- esto es un formulario: mantenerse en el jsp --%>
<%-- Declara variables --%>
<%! Persona persona = new Persona();%>
<%-- Recolecta datos y los transforma gestionando peticiones, esto hace parte del control, es un servlet --%>
<% 
	String nombre= request.getParameter("nombre");
		if(nombre != null){
		persona.setNombre(nombre);
		}
	String paramEdad= request.getParameter("edad");
		int edad=0; 
		if(paramEdad != null){
		edad = Integer.parseInt(paramEdad);
		persona.setEdad(edad);
		}
%>
	<h3> <%= persona %> </h3>

</body>
</html>

	