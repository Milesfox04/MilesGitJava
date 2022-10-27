<%@ page import="java.util.function.Function" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ENCRIPTAR CODIGOS</title>
</head>
<body>
<h1>5. Encripta la cadena, cada letra segun posicion +5.</h1>
<%
    //captura variables, en este caso solo se define no se usa
    String Cadena= request.getParameter("Cadena11");
    //funcion de encriptacion de letras segun posicion de la letra a la z, no considera caracteres
    Function<String, String> encriptar = (String cadena) -> {
        String cadenaEncriptada = "";
        for (int i = 0; i < cadena.length(); i++) {
            char letra = cadena.charAt(i);
            if (letra >= 'a' && letra <= 'z') {
                letra += 5;
                if (letra > 'z') {
                    letra -= 26;
                }
                //muestra resultado
                cadenaEncriptada += letra;
            }
            if(letra >= 'A' && letra <= 'Z') {
                letra += 5;
                if (letra > 'Z') {
                    letra -= 26;
                }
                //muestra resultado
                cadenaEncriptada += letra;
            }
            if(letra >= 'á' && letra <= 'ú') {
                letra += 5;
                if (letra > 'ú') {
                    letra -= 26;
                }
                //muestra resultado
                cadenaEncriptada += letra;
            }
            if(letra >= 'Á' && letra <= 'Ú') {
                letra += 5;
                if (letra > 'Ú') {
                    letra -= 26;
                }
                //muestra resultado
                cadenaEncriptada += letra;
            }
        }
        return cadenaEncriptada;
    };
    //muestra resultado
    out.println("Cadena encriptada: " + encriptar.apply(Cadena));
    %>
    <h2>La cadena encriptada es: <%=encriptar.apply(Cadena)%></h2>

</body>
</html>
