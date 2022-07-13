<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
	<%@page import="java.sql.*"%>
    <%
    	String usuario = request.getParameter("usuario");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String pass = request.getParameter("pass");
        String redirectURL = "exito.html";
        Class.forName("com.mysql.jdbc.Driver");
        Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3305/solociencia","root","");
        Statement dbstatement = dbconect.createStatement();
        String insertarsql = "INSERT INTO usuario(usuario,nombre,apellido,pass) VALUES ('"+usuario+"','"+nombre+"','"+apellido+"','"+pass+"')";
        dbstatement.executeUpdate(insertarsql);
        response.sendRedirect(redirectURL);
        %>
</body>
</html>