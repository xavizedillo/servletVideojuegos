<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="mx.edu.utez.proyectovideojuego.Personaje" %>
<html>
<head>
    <title>Personaje Creado</title>

    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="form-container">
    <h2>¡Ficha del Personaje!</h2>

    <%

        Personaje p = (Personaje) request.getAttribute("personaje");

        if (p != null) {
    %>
    <div class="input-group">
        <label>Nombre:</label>
        <p><%= p.getNombre() %></p>
    </div>

    <div class="input-group">
        <label>Clase:</label>
        <p><%= p.getClase() %></p>
    </div>

    <div class="input-group">
        <label>Nivel Inicial:</label>
        <p><%= p.getNivel() %></p>
    </div>

    <div class="input-group">
        <label>Servidor elegido:</label>
        <p><%= p.getServidor() %></p>
    </div>

    <div class="input-group">
        <label>Correo del Dueño:</label>
        <p><%= p.getCorreoJugador() %></p>
    </div>

    <hr style="border: 0; border-top: 1px solid #ccc; margin: 20px 0;">


    <div class="input-group" style="text-align: center;">
        <label style="color: #2c3e50; font-size: 16px;"> PODER DE COMBATE TOTAL ️</label>
        <h3 style="margin: 5px 0; color: #cc0000; font-size: 24px;"><%= p.getPoderCombate() %> pts</h3>
    </div>
    <%
    } else {
    %>
    <p style="color: red; text-align: center;">Error: No se encontraron datos del personaje.</p>
    <%
        }
    %>

    <br>
    <button onclick="window.location.href='index.jsp'">Crear otro personaje</button>
</div>

</body>
</html>