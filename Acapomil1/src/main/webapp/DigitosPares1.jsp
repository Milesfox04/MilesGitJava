
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CALCULO NUMEROS PARES</title>
</head>
<body>
<%
    //CAPTURAR DATOS
    int num1 = Integer.parseInt(request.getParameter("Numero11"));
    int num2 = Integer.parseInt(request.getParameter("Numero22"));
    int num3 = Integer.parseInt(request.getParameter("Numero33"));
    int num4 = Integer.parseInt(request.getParameter("Numero44"));


    //funcion que cuenta los numeros pares en la cadena1
    String cadena1 = Integer.toString(num1);
    int contador1 = 0;
    for (int i = 0; i < cadena1.length(); i++) {
        if (cadena1.charAt(i) == '2' || cadena1.charAt(i) == '4' || cadena1.charAt(i) == '6' || cadena1.charAt(i) == '8') {
            contador1++;
        } else {
            out.println("No existen numeros pares en el numero 1");
            out.println("<br>");
        }

    }
    //funcion que cuenta los numeros pares en la cadena2
    String cadena2 = Integer.toString(num2);
    int contador2 = 0;
    for (int i = 0; i < cadena2.length(); i++) {
        if (cadena2.charAt(i) == '2' || cadena2.charAt(i) == '4' || cadena2.charAt(i) == '6' || cadena2.charAt(i) == '8') {
            contador2++;
        } else {
            out.println("No existen numeros pares en el numero 2");
            out.println("<br>");
        }

    }
    //funcion que cuenta los numeros pares en la cadena3
    String cadena3 = Integer.toString(num3);
    int contador3 = 0;
    for (int i = 0; i < cadena3.length(); i++) {
        if (cadena3.charAt(i) == '2' || cadena3.charAt(i) == '4' || cadena3.charAt(i) == '6' || cadena3.charAt(i) == '8') {
            contador3++;
        } else {
            out.println("No existen numeros pares en el numero 3");
            out.println("<br>");
        }

    }
    //funcion que cuenta los numeros pares en la cadena4
    String cadena4 = Integer.toString(num4);
    int contador4 = 0;
    for (int i = 0; i < cadena4.length(); i++) {
        if (cadena4.charAt(i) == '2' || cadena4.charAt(i) == '4' || cadena4.charAt(i) == '6' || cadena4.charAt(i) == '8') {
            contador4++;
        } else {
            out.println("No existen numeros pares en el numero 4");
            out.println("<br>");
        }
    }
    //funcion que compara contador1 con contador2 con contador3 con contador4
    if (contador1 > contador2 && contador1 > contador3 && contador1 > contador4) {
        out.println("El numero 1 tiene mas numeros pares");
        out.println("<br>");
        out.println("El numero es: " + num1);
    } else if (contador2 > contador1 && contador2 > contador3 && contador2 > contador4) {
        out.println("El numero 2 tiene mas numeros pares");
        out.println("<br>");
        out.println("El numero es: " + num2);
    } else if (contador3 > contador1 && contador3 > contador2 && contador3 > contador4) {
        out.println("El numero 3 tiene mas numeros pares");
        out.println("<br>");
        out.println("El numero es: " + num3);
    } else if (contador4 > contador1 && contador4 > contador2 && contador4 > contador3) {
        out.println("El numero 4 tiene mas numeros pares");
        out.println("<br>");
        out.println("El numero es: " + num4);
    } else {
        out.println("No hay numero que tenga mas numeros pares");
        out.println("<br>");
    }
%>
</body>
</html>
