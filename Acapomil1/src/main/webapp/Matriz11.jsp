<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CALCULO MATRIZ 11X11</title>
</head>

<body>
<h1>1. Resultados de la multiplicacion de los numeros del 1 al 10 en una matriz.</h1>
<br>
<%
    //Define la matriz del 1 al 10
    int[][] matriz = new int[11][11];
    int i, j;
    for (i = 1; i < 11; i++) {
        for (j = 1; j < 11; j++) {
            matriz[i][j] = i * j;
        }
    }
    //imprimir matriz
    out.println("<br></table><br>");
    out.println("<table border=1>");
    for (i = 1; i < 11; i++) {
        out.println("<tr>");
        for (j = 1; j < 11; j++) {
            out.print("<td>" + matriz[i][j] + "</td>");
        }
        out.println("</tr>");
    }
%>
</body>
</html>