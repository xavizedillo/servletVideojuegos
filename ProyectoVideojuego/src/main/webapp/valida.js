document.getElementById("formPersonaje").addEventListener("submit", function(event) {
    event.preventDefault();

    document.querySelectorAll(".error-msg").forEach(el => el.innerText = "");

    let valid = true;

    const nombre = document.getElementById("nombre").value.trim();
    if (nombre === "") {
        document.getElementById("errorNombre").innerText = "El nombre del personaje es obligatorio.";
        valid = false;
    }

    const clase = document.getElementById("clase").value.trim();
    if (clase === "") {
        document.getElementById("errorClase").innerText = "La clase del personaje es obligatoria.";
        valid = false;
    }

    const nivel = parseInt(document.getElementById("nivel").value.trim());
    if (isNaN(nivel) || nivel < 1 || nivel > 10) {
        document.getElementById("errorNivel").innerText = "El nivel del personaje debe ser un número entre 1 y 10.";
        valid = false;
    }


    const servidores = document.getElementsByName("servidor");
    let servidorSeleccionado = false;
    for (const srv of servidores) {
        if (srv.checked) {
            servidorSeleccionado = true;
            break;
        }
    }

    if (!servidorSeleccionado) {
        document.getElementById("errorServidor").innerText = "Debes seleccionar al menos un servidor.";
        valid = false;
    }

    const correo = document.getElementById("correo").value.trim();
    const regexCorreo = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!regexCorreo.test(correo)) {
        document.getElementById("errorCorreo").innerText = "El correo electrónico no es válido.";
        valid = false;
    }

    if (valid) {
        this.submit();
    }
});
