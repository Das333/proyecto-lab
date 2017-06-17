package episunsa;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class NuevaEspecialidad extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/plain");
		RequestDispatcher rd = null;
		HttpSession sesion = req.getSession();
		Persona persona;
		try{
			rd = req.getRequestDispatcher("/especialidad_registro_admin.jsp");
			Authenticator authenticator = new Authenticator();
			persona = authenticator.authenticate((String)sesion.getAttribute("usuario"), (String)sesion.getAttribute("contrasena"));
			req.setAttribute("user", persona);
			rd.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
			rd = req.getRequestDispatcher("/index.jsp");
        	rd.forward(req, resp);
		}
	}
}
