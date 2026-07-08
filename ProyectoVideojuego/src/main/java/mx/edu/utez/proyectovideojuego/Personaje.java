package mx.edu.utez.proyectovideojuego;

public class Personaje {

    private String nombre;
    private String clase;
    private int nivel;
    private String servidor;
    private String correoJugador;


    private int poderCombate;


    public Personaje() {
    }


    public Personaje(String nombre, String clase, int nivel, String servidor, String correoJugador, int poderCombate) {
        this.nombre = nombre;
        this.clase = clase;
        this.nivel = nivel;
        this.servidor = servidor;
        this.correoJugador = correoJugador;
        this.poderCombate = poderCombate;
    }


    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getClase() { return clase; }
    public void setClase(String clase) { this.clase = clase; }

    public int getNivel() { return nivel; }
    public void setNivel(int nivel) { this.nivel = nivel; }

    public String getServidor() { return servidor; }
    public void setServidor(String servidor) { this.servidor = servidor; }

    public String getCorreoJugador() { return correoJugador; }
    public void setCorreoJugador(String correoJugador) { this.correoJugador = correoJugador; }

    public int getPoderCombate() { return poderCombate; }
    public void setPoderCombate(int poderCombate) { this.poderCombate = poderCombate; }
}