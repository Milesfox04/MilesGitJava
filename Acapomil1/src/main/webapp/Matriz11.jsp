<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CALCULO MATRIZ 11X11</title>
    <link rel="stylesheet" href="estilos.css"/>
    <style>
        h1{
            text-align: initial;
            font-size: 30px;
        }
        a:link, a:visited{
            background-color:#b5179e ;
            color: white;
            padding:15px 25px;
            text-align: center;
            text-decoration: none;
        }
        a:hover, a:active{
            background-color:#f72585;
        }
    </style>
</head>
<body>
<h1>1. Resultados de la multiplicacion de los numeros del 1 al 10 en una matriz.</h1>
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
    out.println("<br><table><br/>");
    out.println("<table border=1>");
    out.println("<th>*</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th><th>10</th>");
    for (i = 1; i < 11; i++) {
        out.println("<tr><th>" + i + "</th>");
        for (j = 1; j < 11; j++) {
            out.print("<td>" + matriz[i][j] + "</td>");
        }
        out.println("</tr>");
    }
    out.println("</table>");
%>
<br/>
<br/>
<a href = "index.html">Ir a la página principal</a>
</body>
</html>
