<%@ page import="org.w3c.dom.xpath.XPathResult" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CALCULO DE CANTIDAD DE DIGITOS PARES EN NUMEROS</title>
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
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<body>
<h1>4. Resultado de 4 numeros enteros, el que tiene más digitos pares .</h1>
<%
    //captura valores del index
    String Cadena1 = request.getParameter("Numero11");
    String Cadena2 = request.getParameter("Numero22");
    String Cadena3 = request.getParameter("Numero33");
    String Cadena4 = request.getParameter("Numero44");
    //muestra las cadenas
    out.println("Cadena1: " + Cadena1);
    out.println("<br>");
    out.println("Cadena2: " + Cadena2);
    out.println("<br>");
    out.println("Cadena3: " + Cadena3);
    out.println("<br>");
    out.println("Cadena4: " + Cadena4);
    out.println("<br>");
    //filtra valores numericos
    Cadena1 = Cadena1.replaceAll("[^0-9]", "");
    Cadena2 = Cadena2.replaceAll("[^0-9]", "");
    Cadena3 = Cadena3.replaceAll("[^0-9]", "");
    Cadena4 = Cadena4.replaceAll("[^0-9]", "");
    //Filtra valores pares
    Cadena1 = Cadena1.replaceAll("[13579]", "");
    Cadena2 = Cadena2.replaceAll("[13579]", "");
    Cadena3 = Cadena3.replaceAll("[13579]", "");
    Cadena4 = Cadena4.replaceAll("[13579]", "");
    //cuenta valores pares de cada cadena
    int Contador1 = Cadena1.length();
    int Contador2 = Cadena2.length();
    int Contador3 = Cadena3.length();
    int Contador4 = Cadena4.length();
    //compara contadores y muestra el mayor
    if (Contador1 > Contador2 && Contador1 > Contador3 && Contador1 > Contador4) {
        out.println("En la cadena 1: " + Cadena1 + ", hay " + Contador1 + " valor(es) par(es)");
    } else if (Contador2 > Contador1 && Contador2 > Contador3 && Contador2 > Contador4) {
        out.println("En la cadena 2: " +Cadena2 + "hay " + Contador2 + " valor(es) par(es)");
    } else if (Contador3 > Contador1 && Contador3 > Contador2 && Contador3 > Contador4) {
        out.println("En la cadena 3: " +Cadena3 + "hay " + Contador3 + " valor(es) par(es)");
    } else if (Contador4 > Contador1 && Contador4 > Contador2 && Contador4 > Contador3) {
        out.println("En la cadena 4: " +Cadena4 + "hay " + Contador4 + " valor(es) par(es)");
    } else if (Contador1 == Contador2 && Contador1 == Contador3 && Contador1 == Contador4) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas ingresadas, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 1, hay " + Contador1 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 2, hay " + Contador2 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 3, hay " + Contador3 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 4, hay " + Contador4 + " valor(es) par(es)");
    }else if (Contador1 == Contador2 && Contador1 == Contador4 && Contador1 > Contador3) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 1, 2 y 4, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 1, hay " + Contador1 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 2, hay " + Contador2 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 4, hay " + Contador4 + " valor(es) par(es)");
    }else if (Contador1 == Contador3 && Contador1 == Contador4 && Contador1 > Contador2) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 1, 3 y 4, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 1, hay " + Contador1 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 3, hay " + Contador3 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 4, hay " + Contador4 + " valor(es) par(es)");
    }else if (Contador2 == Contador3 && Contador2 == Contador4 && Contador2 > Contador1) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 2, 3 y 4, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 2, hay " + Contador2 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 3, hay " + Contador3 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 4, hay " + Contador4 + " valor(es) par(es)");
    }else if (Contador1 == Contador2 && Contador1 > Contador3 && Contador1 > Contador4) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 1 y 2, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 1, hay " + Contador1 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 2, hay " + Contador2 + " valor(es) par(es)");
    }else if (Contador1 == Contador3 && Contador1 > Contador2 && Contador1 > Contador4) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 1 y 3, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 1, hay " + Contador1 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 3, hay " + Contador3 + " valor(es) par(es)");
    }else if (Contador1 == Contador4 && Contador1 > Contador2 && Contador1 > Contador3) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 1 y 4, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 1, hay " + Contador1 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 4, hay " + Contador4 + " valor(es) par(es)");
    }else if (Contador2 == Contador3 && Contador2 > Contador1 && Contador2 > Contador4) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 2 y 3, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 2, hay " + Contador2 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 3, hay " + Contador3 + " valor(es) par(es)");
    }else if (Contador2 == Contador4 && Contador2 > Contador1 && Contador2 > Contador3) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 2 y 4, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 2, hay " + Contador2 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 4, hay " + Contador4 + " valor(es) par(es)");
    }else if (Contador3 == Contador4 && Contador3 > Contador1 && Contador3 > Contador2) {
        out.println("La cantidad de valor(es) par(es) es igual en las cadenas 3 y 4, por lo tanto no hay una mayor");
        out.println("<br>");
        out.println("En la cadena 3, hay " + Contador3 + " valor(es) par(es)");
        out.println("<br>");
        out.println("En la cadena 4, hay " + Contador4 + " valor(es) par(es)");
    }
%>
<br/>
<br/>
<a href = "index.html">Ir a la página principal</a>
</body>

</html>