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
    //transformar cadena a array
    char[] A1 = cadenaA.toCharArray();
    char[] B1 = cadenaB.toCharArray();
    char[] C1 = cadenaC.toCharArray();
    //cuenta los valores repetidos en A1
    int contadorA = 0;
    for (int i = 0; i < A1.length; i++) {
        for (int j = 0; j < A1.length; j++) {
            if (A1[i] == A1[j]) {
                contadorA++;
            }
        }
    }
    //cuenta los valores repetidos en B1
    int contadorB = 0;
    for (int i = 0; i < B1.length; i++) {
        for (int j = 0; j < B1.length; j++) {
            if (B1[i] == B1[j]) {
                contadorB++;
            }
        }
    }
    //cuenta los valores repetidos en C1
    int contadorC = 0;
    for (int i = 0; i < C1.length; i++) {
        for (int j = 0; j < C1.length; j++) {
            if (C1[i] == C1[j]) {
                contadorC++;
            }
        }
    }
    //compara los valores de los contadores
    if (contadorA > contadorB && contadorA > contadorC) {
        out.println("El numero con mas digitos repetidos es el 1º");
    } else if (contadorB > contadorA && contadorB > contadorC) {
        out.println("El numero con mas digitos repetidos es el 2º");
    } else if (contadorC > contadorA && contadorC > contadorB) {
        out.println("El numero con mas digitos repetidos es el 3º");
    } else if (contadorA == contadorB && contadorA == contadorC){
        out.println("Los tres numeros tienen la misma cantidad de digitos repetidos");
    } else if (contadorA == contadorB && contadorA > contadorC){
        out.println("El numero con mas digitos repetidos es el 1º y el 2º");
    } else if (contadorA == contadorC && contadorA > contadorB){
        out.println("El numero con mas digitos repetidos es el 1º y el 3º");
    } else if (contadorB == contadorC && contadorB > contadorA){
        out.println("El numero con mas digitos repetidos es el 2º y el 3º");
    } else {
        out.println("Los numeros ingresados no tienen digitos repetidos");
    }



%>

</body>
</html>