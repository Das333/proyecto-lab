package episunsa;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Perfil extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		RequestDispatcher rd = null;
		HttpSession sesion = req.getSession();
		
		Persona persona;
		
		
		try{
			rd = req.getRequestDispatcher("/perfil.jsp");
			Authenticator authenticator = new Authenticator();
			persona = authenticator.authenticate((String)sesion.getAttribute("usuario"), (String)sesion.getAttribute("contrasena"));
			req.setAttribute("user", persona);
			rd.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
			
			
		}
	}
}
