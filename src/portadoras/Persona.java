
package portadoras;

public class Persona {
    private String nombre;
    private String apellido;
    private int edad;
    private Boolean soltero;
    private String gustoMusical;

    public Persona(String nombre, String apellido, int edad, Boolean soltero, String gustoMusical) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.soltero = soltero;
        this.gustoMusical = gustoMusical;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public Boolean getSoltero() {
        return soltero;
    }

    public void setSoltero(Boolean soltero) {
        this.soltero = soltero;
    }

    public String getGustoMusical() {
        return gustoMusical;
    }

    public void setGustoMusical(String gustoMusical) {
        this.gustoMusical = gustoMusical;
    }

    
  
}
