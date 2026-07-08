<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Crear Personaje </title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>

<div class="form-container">
    <h2>Registro de Nuevo Personaje</h2>

    <form id="formPersonaje" action="RegistrarPersonaje" method="post">

        <div class="input-group">
            <label for="nombre">Nombre del Personaje:</label>
            <input type="text" id="nombre" name="nombre">
            <span class="error-msg" id="errorNombre"></span>
        </div>

        <div class="input-group">
            <label for="clase">Clase:</label>
            <select id="clase" name="clase">
                <option value="">-- Selecciona una clase --</option>
                <option value="Guerrero">Guerrero (Alta Defensa)</option>
                <option value="Mago">Mago (Alto Daño Mágico)</option>
                <option value="Asesino">Asesino (Alta Velocidad)</option>
            </select>
            <span class="error-msg" id="errorClase"></span>
        </div>

        <div class="input-group">
            <label for="nivel">Nivel Inicial (1 - 10):</label>
            <input type="number" id="nivel" name="nivel">
            <span class="error-msg" id="errorNivel"></span>
        </div>

        <div class="input-group">
            <label>Servidor:</label>
            <div class="radio-options">
                <input type="radio" id="srv1" name="servidor" value="América del Sur">
                <label for="srv1">América del Sur</label>

                <input type="radio" id="srv2" name="servidor" value="Norteamérica">
                <label for="srv2">Norteamérica</label>
            </div>
            <span class="error-msg" id="errorServidor"></span>
        </div>

        <div class="input-group">
            <label for="correo">Correo Electrónico:</label>
            <input type="text" id="correo" name="correo">
            <span class="error-msg" id="errorCorreo"></span>
        </div>

        <button type="submit">Crear Personaje</button>
    </form>
</div>

<script src="valida.js"></script>

</body>
</html>