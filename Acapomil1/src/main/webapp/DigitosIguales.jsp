<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.function.Function" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CALCULO DE DIGITOS REPETIDOS</title>
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
    String FiltroCadenaA = cadenaA.replaceAll("[^0-9]", "");
    String FiltroCadenaB = cadenaB.replaceAll("[^0-9]", "");
    String FiltroCadenaC = cadenaC.replaceAll("[^0-9]", "");
    //orden los resultados, dando formato
    String F_O_CadenaA = FiltroCadenaA.replaceAll("\\s","");
    String F_O_CadenaB = FiltroCadenaB.replaceAll("\\s","");
    String F_O_CadenaC = FiltroCadenaC.replaceAll("\\s","");
    //transformar cadena a array
    char[] A1 = F_O_CadenaA.toCharArray();
    char[] B1 = F_O_CadenaB.toCharArray();
    char[] C1 = F_O_CadenaC.toCharArray();
    //funcion que almacena solo una vez los digitos repetidos con frecuencia mayor a 1
    Function<char[], List<Character>> funcionRepetidos = (char[] array) -> {
        List<Character> repetidos = new ArrayList<>();
        for (int i = 0; i < array.length; i++) {
            int contador = 0;
            for (int j = 0; j < array.length; j++) {
                if (array[i] == array[j]) {
                    contador++;
                }
            }
            if (contador > 1 && !repetidos.contains(array[i])) {
                repetidos.add(array[i]);
            }
        }
        return repetidos;
    };
    //aplicacion de funcion
    List<Character> repetidosA = funcionRepetidos.apply(A1);
    List<Character> repetidosB = funcionRepetidos.apply(B1);
    List<Character> repetidosC = funcionRepetidos.apply(C1);

    //verifica la longitud de las listas sin contar el char0
    int longitudA = repetidosA.size();
    int longitudB = repetidosB.size();
    int longitudC = repetidosC.size();
    out.println("Digitos repetidos de la Cadena1: " + (longitudA));
    out.println("<br>");
    out.println("Digitos repetidos de la Cadena2: " + (longitudB));
    out.println("<br>");
    out.println("Digitos repetidos de la Cadena3: " + (longitudC));
    out.println("<br>");

    //condicion para determinar el numero con mas digitos repetidos
    if (longitudA> longitudB && longitudA > longitudC) {
        out.println("El numero con mas digitos repetidos es el 1º: " + cadenaA);
    } else if (longitudB > longitudA && longitudB > longitudC) {
        out.println("El numero con mas digitos repetidos es el 2º: " + cadenaB);
    } else if (longitudC > longitudA && longitudC > longitudB) {
        out.println("El numero con mas digitos repetidos es el 3º: " + cadenaC);
    } else if (longitudA == longitudB && longitudA > longitudC) {
        out.println("El numero con mas digitos repetidos es el 1º y el 2º");
} else if (longitudA == longitudC && longitudA > longitudB) {
        out.println("El numero con mas digitos repetidos es el 1º y el 3º");
} else if (longitudB == longitudC && longitudB > longitudA) {
        out.println("El numero con mas digitos repetidos es el 2º y el 3º");
} else if (longitudA== longitudB && longitudA == longitudC){
        out.println("Los tres numeros tienen la misma cantidad de digitos repetidos");
    }else{
        out.println("Los numeros ingresados no tienen digitos repetidos");
    }

%>
<br/>
<br/>
<a href = "index.html">Ir a la página principal</a>
</body>
</html>