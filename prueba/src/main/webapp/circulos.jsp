<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="ISO-8859-1">
		<title>Piramide de circulos</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<%
			int altura = Integer.parseInt(request.getParameter("altura")); 
			for(int i=0;i<altura;i++){ 
		%>
				<div align="center">
				<img src="arena.png">
		<% 
				for(int x=0;x<i*2;x++){
		%>
					<img src="arena.png">	
		<% 
				}
		%>	
				</div>
		<% 
			}
		%>
	</body>
</html>