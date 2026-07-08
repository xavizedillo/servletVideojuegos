package mx.edu.utez.proyectovideojuego;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegistrarPersonaje")
public class RegistrarPersonajeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String clase = request.getParameter("clase");
        int nivel = Integer.parseInt(request.getParameter("nivel"));
        String servidor = request.getParameter("servidor");
        String correo = request.getParameter("correo");

        int multiplicador = 100;
        if (clase != null && clase.equals("Guerrero")) {
            multiplicador = 120;
        } else if (clase != null && clase.equals("Mago")) {
            multiplicador = 150;
        } else if (clase != null && clase.equals("Asesino")) {
            multiplicador = 130;
        }

        int poderCombate = nivel * multiplicador;

        Personaje nuevoPersonaje = new Personaje(nombre, clase, nivel, servidor, correo, poderCombate);
        request.setAttribute("personaje", nuevoPersonaje);
        request.getRequestDispatcher("/resultado.jsp").forward(request, response);
    }
}