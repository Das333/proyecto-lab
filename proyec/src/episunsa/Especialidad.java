package episunsa;



import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

//import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Especialidad {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	public String descripcion;
	
	@Persistent
	private String imagen;
	
	@Persistent
	private Date fechaRegistro;
	
	
	public Especialidad(String nombre, String descripcion) {
		this.nombre = nombre;
		this.descripcion = descripcion;
		imagen="No especificado";
		fechaRegistro= new Date();
	}
	
	public Especialidad(String nombre, String descripcion, String imagen) {
	this(nombre,descripcion);
	this.imagen=imagen;
	fechaRegistro= new Date();
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public Date getFechaRegistro() {
		return fechaRegistro;
	}

	public Long getKey() {
		return key;
	}
	
}