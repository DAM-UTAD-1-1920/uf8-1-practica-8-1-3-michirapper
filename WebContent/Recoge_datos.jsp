<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	String pais = request.getParameter("pais");
	String tecno = request.getParameter("tecnologias");

	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
	Statement miStatement = miConexion.createStatement();
	String instruccionSql = "INSERT INTO usuarios (Nombre, Apellido, Usuario,Contrasena, Pais, Tecnologia) VALUES ('"
			+ nombre + "','" + apellidos + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')";
	
	miStatement.executeUpdate(instruccionSql);
	
	out.println("Registrado con exito");
	%>

</body>
</html>