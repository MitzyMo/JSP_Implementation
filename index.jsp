<%@page import="modelo.Persona"%>
<%@page import="modelo.Curso"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>titulo</title>
<meta charset="utf-8">
</head>
<body>
<h1> Datos de usuarios </h1>
  <form method="get" action="ServletUsuario" >
    nombre: <input type="text" name="nombre" ><br>
    edad: <input type="number" name="edad" value="0"><br>
    <input type="submit" value="Enviar"> <br>
  </form>
  <jsp:useBean id="mycurso" scope="application" class="modelo.Curso"/>
    El listado es: ${mycurso.listado}
</body>

</html> 