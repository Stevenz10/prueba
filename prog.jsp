<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
	<%@page import="java.sql.*"%>
    <%
    	String fecha = request.getParameter("fecha");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String redirectURL = "exitoH.html";
        Class.forName("com.mysql.jdbc.Driver");
        Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3305/solociencia","root","");
        Statement dbstatement = dbconect.createStatement();
        String insertarsql = "INSERT INTO prog(fecha,nombre,apellido) VALUES ('"+fecha+"','"+nombre+"','"+apellido+"')";
        dbstatement.executeUpdate(insertarsql);
        response.sendRedirect(redirectURL);
        %>
</body>
</html>