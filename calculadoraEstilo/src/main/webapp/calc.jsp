<%@page import="com.jacaranda.CalcException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>caculadora</title>
		<link rel="stylesheet" href="calc.css" type="text/css">
	</head>
	<body>
		<div id="fondo">
			<br><br><br>
			<%@page import="com.jacaranda.Calc" %>
			<%
				double number1 = Double.parseDouble(request.getParameter("number1"));
				double number2 = Double.parseDouble(request.getParameter("number2"));
				
				String add = request.getParameter("add");
				String subtract = request.getParameter("subtract");
				String multiply = request.getParameter("multiply");
				String divide = request.getParameter("divide");
				
				Calc operation = new Calc(number1,number2);
				double result =0;
				if(add != null){
					result = operation.add();
				}else if(subtract !=null){
					result = operation.subtract();
				}else if(multiply !=null){
					result = operation.multiply();
				}else{
					try{
						result = operation.divide();	
					}catch(CalcException e){
					%>
						<p class="result">No se puede dividir entre 0</p>
					<%
					}
					
				}
				
			%>
				<p class="result">El resultado de la operacion es: <%=result%></p>
	<br><br><br>
	</div>
	</body>
</html>