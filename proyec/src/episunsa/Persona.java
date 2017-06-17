package episunsa;



import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

//import com.google.appengine.api.datastore.Key;

@PersistenceCapable(detachable="true")
public class Persona {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	public String correo;
	
	@Persistent
	private String contrasena;
	
	@Persistent
	private String dni;
	
	@Persistent
	public String telefono;
	
	@Persistent
	private String tipo ;
	
	@Persistent
	private String genero;
	
	@Persistent
	private int nacDia ;
	
	@Persistent
	private int nacMes ;
	
	@Persistent
	private int nacAnio ;

	
	public Persona(String nombre, String correo, String contrasena, String dni, 
			String telefono, String genero, int dia, int mes, int anio) {
		
		this.nombre = nombre;
		this.correo = correo;
		this.contrasena = contrasena;
		this.dni = dni;
		this.telefono=telefono;
		this.genero=genero;
		nacDia=dia;
		nacMes=mes;
		nacAnio=anio;
		tipo="Paciente";
	
		
	}
	
	public Persona(String nombre, String correo, String contrasena, String dni, 
			String telefono, String genero, int dia, int mes, int anio, String tipo) {
	this(nombre,correo,contrasena,dni,telefono,genero,dia,mes,anio);
	this.tipo=tipo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}
	
	public int getNacDia(){
		return nacDia;
	}
	
	public void setNacDia(int dia){
		nacDia=dia;
	}
	
	public int getNacMes(){
		return nacMes;
	}
	
	public void setNacMes(int mes){
		nacMes=mes;
	}
	
	public int getNacAnio(){
		return nacAnio;
	}
	
	public void setNacAnio(int anio){
		nacAnio=anio;
	}

	public Long getKey() {
		return key;
	}
	public String getTelefono(){
		return telefono;
	}
	public void setTelefono(String telefono){
		this.telefono=telefono;
	}
	
	public String getTipo(){
		return tipo;
	}
	
	public void setTipo(String tipo){
		this.tipo=tipo;
	}
	
	public String getGenero(){
		return genero;
	}
	
	public void setGenero(String genero){
		this.genero=genero;
	}
	
}