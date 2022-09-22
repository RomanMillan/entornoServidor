<%@page import="com.jacaranda.CalcularException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@page import="com.jacaranda.Calculadora" %>
		<%
			double number1 = Double.parseDouble(request.getParameter("number1"));
			double number2 = Double.parseDouble(request.getParameter("number2"));
			
			String add = request.getParameter("add");
			String subtract = request.getParameter("subtract");
			String multiply = request.getParameter("multiply");
			String divide = request.getParameter("divide");
			
			Calculadora operation = new Calculadora(number1,number2);
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
				}catch(CalcularException e){
				%>
					<p>No se puede dividir entre 0</p>
				<%
				}
				
			}
			
		%>
			<p>El resultado de la operacion es: <%=result%></p>
</body>
</html>