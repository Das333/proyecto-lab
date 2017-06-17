package episunsa;

import java.io.IOException;

import javax.jdo.Extent;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class VerUsuario extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		RequestDispatcher rd = null;
		HttpSession sesion = req.getSession();
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		Persona persona;
		
		try
		{
			Extent<Persona> extent = pm.getExtent(Persona.class, false);
			for (Persona e : extent) {
			 System.out.println(e.getNombre());
			}
			rd = req.getRequestDispatcher("/ver_usuario_admin.jsp");
			Authenticator authenticator = new Authenticator();
			persona = authenticator.authenticate((String)sesion.getAttribute("usuario"), (String)sesion.getAttribute("contrasena"));
			req.setAttribute("user", persona);
			req.setAttribute("personas", extent);
			rd.forward(req, resp);
			extent.closeAll();
		}catch(Exception er){
			System.out.println(er);	
			//rd = req.getRequestDispatcher("/index.jsp");
			resp.sendRedirect("/index.jsp");
			System.out.println("error de sesion en verUsuario");
		}
	}
}
