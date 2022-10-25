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
    String CadenaEncriptada = "";
    //funcion de encriptacion
        Function<String, String> encriptar = (String cadena) -> {
        String cadenaEncriptada = "";
        for (int i = 0; i < cadena.length(); i++) {
            cadenaEncriptada += (char) (cadena.charAt(i) + 5);
        }
        return cadenaEncriptada;
    };
    //define proceso de encriptacion
    for (int i = 0; i < Cadena.length(); i++) {
        CadenaEncriptada += (char) (Cadena.charAt(i) + 5);
    }
    //muestra resultado
    out.println("Cadena encriptada: " + CadenaEncriptada);
    %>
    <h2>La cadena encriptada es: <%=CadenaEncriptada%></h2>
    <h2>La cadena encriptada es: <%=encriptar.apply(Cadena)%></h2>

</body>
</html>
