
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FILTRADO DE CADENAS</title>
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
<h1>2. Resultado de leer 5 cadenas de cracteres, y eliminar todas las vocales de cada una de ellas.</h1>
<%
        //Captura variables
        String Cadena1 = request.getParameter("Cadena1");
        String Cadena2 = request.getParameter("Cadena2");
        String Cadena3 = request.getParameter("Cadena3");
        String Cadena4 = request.getParameter("Cadena4");
        String Cadena5 = request.getParameter("Cadena5");
        //filtro vocales de las variables
        Cadena1 = Cadena1.replaceAll("[aeiouAEIOUáéíóúÁÉÍÓÚäåüöð]", "");
        Cadena2 = Cadena2.replaceAll("[aeiouAEIOUáéíóúÁÉÍÓÚäåüöð]", "");
        Cadena3 = Cadena3.replaceAll("[aeiouAEIOUáéíóúÁÉÍÓÚäåüöð]", "");
        Cadena4 = Cadena4.replaceAll("[aeiouAEIOUáéíóúÁÉÍÓÚäåüöð]", "");
        Cadena5 = Cadena5.replaceAll("[aeiouAEIOUáéíóúÁÉÍÓÚäåüöð]", "");
        //orden los resultados, dando formato
        Cadena1 = Cadena1.replaceAll("\\s","");
        Cadena2 = Cadena2.replaceAll("\\s","");
        Cadena3 = Cadena3.replaceAll("\\s","");
        Cadena4 = Cadena4.replaceAll("\\s","");
        Cadena5 = Cadena5.replaceAll("\\s","");
        //muestra los resultados del filtro
        out.println("Cadena 1: " + Cadena1);
        out.println("<br>");
        out.println("Cadena 2: " + Cadena2);
        out.println("<br>");
        out.println("Cadena 3: " + Cadena3);
        out.println("<br>");
        out.println("Cadena 4: " + Cadena4);
        out.println("<br>");
        out.println("Cadena 5: " + Cadena5);
        out.println("<br>");
%>
<br/>
<br/>
<a href = "index.html">Ir a la página principal</a>
        </body>
</html>
