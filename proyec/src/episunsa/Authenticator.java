package episunsa;

import java.util.List;

import javax.jdo.PersistenceManager;
import  javax.jdo.Query;

public class Authenticator {
	 
	public Persona authenticate(String usuario, String contrasena) {
		System.out.println("Autenticando");
		List<Persona> personas=queryUser(usuario);
		if(personas!=null){
			for (Persona e : personas) {
                System.out.println(e.getNombre()+" "+e.getCorreo());  
                if ((e.getCorreo().equalsIgnoreCase(usuario)) && (e.getContrasena().equals(contrasena))||
                		(e.getTelefono().equalsIgnoreCase(usuario)) && (e.getContrasena().equals(contrasena)))
        			return e;
            }
		}
		System.out.println("Autenticando fin");
		return null;	
	}
	
	@SuppressWarnings("unchecked")
	public List<Persona> queryUser(String usuario){
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		 Query query = pm.newQuery(Persona.class);
		    query.setFilter("(correo == usuarioParam)");
		    query.declareParameters("String usuarioParam");
		   
		    List<Persona> results=null;
		    try {
		    	results = (List<Persona>) query.execute(usuario);
		        if (results.iterator().hasNext()) {
		            for (Persona e : results) {
		                System.out.println(e.getNombre()+" "+e.getCorreo());  
		            }
		        } else {
		        	 query.setFilter("(telefono == usuarioParam)");
		 		    query.declareParameters("String usuarioParam");
		            
		        	results = (List<Persona>) query.execute(usuario);
			        if (results.iterator().hasNext()) {
			            for (Persona e : results) {
			                System.out.println(e.getNombre()+" "+e.getCorreo());  
			            }
			        }else{
			        	// ... no results ..
			        	System.out.println("no se encontraron coincidencias");
			        }
		        }
		    } finally {
		        query.closeAll();
		    }
			return results;
	}
}
