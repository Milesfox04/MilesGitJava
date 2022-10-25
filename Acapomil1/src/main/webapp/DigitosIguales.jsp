<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CALCULO DE DIGITOS REPETIDOS</title>
</head>
<body>
<h1>3. Calculo al Ingresar 3 numeros reales, escribir el que tiene más digitos iguales.</h1>
<%
    //captura variables como string
    String cadenaA = request.getParameter("Numero1");
    String cadenaB = request.getParameter("Numero2");
    String cadenaC = request.getParameter("Numero3");
   //muestra las cadenas
    out.println("Cadena1: " + cadenaA);
    out.println("<br>");
    out.println("Cadena2: " + cadenaB);
    out.println("<br>");
    out.println("Cadena3: " + cadenaC);
    out.println("<br>");
    //filtra las cadenas
    cadenaA = cadenaA.replaceAll("[^0-9]", "");
    cadenaB = cadenaB.replaceAll("[^0-9]", "");
    cadenaC = cadenaC.replaceAll("[^0-9]", "");
    //orden los resultados, dando formato
    cadenaA = cadenaA.replaceAll("\\s","");
    cadenaB = cadenaB.replaceAll("\\s","");
    cadenaC = cadenaC.replaceAll("\\s","");
    //cuenta caracteres repetidos en la cadenaA

%>

</body>
</html>