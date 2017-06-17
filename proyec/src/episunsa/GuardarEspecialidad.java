package episunsa;

import java.io.IOException;


import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class GuardarEspecialidad extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String nombre = req.getParameter("nombre");
		String descripcion = req.getParameter("descripcion");
		
		Especialidad e;
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		e= new Especialidad(nombre, descripcion);
		System.out.println("datos con tipo");
		
		try{
			pm.makePersistent(e);
			resp.getWriter().println("Datos grabados correctamente.");
			System.out.println("datos grabados");
		}catch(Exception er){
			System.out.println(er);
			resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			System.out.println("error");
		}finally{
			pm.close();
		}
	}
}
