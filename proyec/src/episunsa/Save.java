package episunsa;

import java.io.IOException;


import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Save extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String nombre = req.getParameter("nombre");
		String correo = req.getParameter("correo");
		String contrasenia = req.getParameter("contrasenia");
		String dni = req.getParameter("dni");
		String telefono=req.getParameter("telefono");
		String genero=req.getParameter("genero");
		int dia=Integer.parseInt(req.getParameter("dia"));
		int mes=Integer.parseInt(req.getParameter("mes"));
		int anio=Integer.parseInt(req.getParameter("anio"));
		String tipo = req.getParameter("tipo");
		Persona p;
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		if(tipo==null){
			 p= new Persona(nombre, correo, contrasenia, dni, telefono, genero, dia, mes, anio);
			 System.out.println("datos sin tipo");
		}else{
			p= new Persona(nombre, correo, contrasenia, dni, telefono, genero, dia, mes, anio,tipo);
			System.out.println("datos con tipo");
		}
		try{
			pm.makePersistent(p);
			resp.getWriter().println("Datos grabados correctamente.");
			System.out.println("datos grabados");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			System.out.println("error");
		}finally{
			pm.close();
		}
	}
}
