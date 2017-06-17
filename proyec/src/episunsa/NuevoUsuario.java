package episunsa;

import java.io.IOException;

import javax.jdo.Extent;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class NuevoUsuario extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/plain");
		RequestDispatcher rd = null;
		HttpSession sesion = req.getSession();
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		Persona persona;
		try{
			Extent<Especialidad> extent = pm.getExtent(Especialidad.class, false);
			for (Especialidad e : extent) {
			 System.out.println(e.getNombre());
			}
			
			rd = req.getRequestDispatcher("/usuario_registro_admin.jsp");
			Authenticator authenticator = new Authenticator();
			persona = authenticator.authenticate((String)sesion.getAttribute("usuario"), (String)sesion.getAttribute("contrasena"));
			req.setAttribute("user", persona);
			req.setAttribute("especialidades", extent);
			rd.forward(req, resp);
			extent.closeAll();
		}catch(Exception e){
			System.out.println(e);
			rd = req.getRequestDispatcher("/index.jsp");
        	rd.forward(req, resp);
		}
	}
}
