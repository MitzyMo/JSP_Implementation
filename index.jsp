<%@page import="modelo.Persona"%>
<%@page import="modelo.Curso"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <jsp:useBean id="mycurso" scope="session" class="modelo.Curso"/>
   <p> El listado es: </p>
   <table id="customers">
    <tr>
      <th>Nombre</th>
      <th>Edad</th>
    </tr>
   </table>
   <c:forEach items="${mycurso.listado}" begin="0" end="${mycurso.listado.size()}" var="persona">

    <tr><td><c:out value="${persona.nombre}"/> </td>

    <td><c:out value="${persona.edad}"/> </td></tr>

   </c:forEach>
</body>

</html> 