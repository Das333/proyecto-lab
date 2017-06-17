package episunsa;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



 
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
 
		String usuario = request.getParameter("usuario");
		String contrasena = request.getParameter("contrasena");

		Persona result=null;
		Authenticator authenticator = new Authenticator();
		result = authenticator.authenticate(usuario, contrasena);

		if (result!=null && sesion.getAttribute("usuario")==null)
		{
			try {
				sesion.setAttribute("usuario", usuario);
				sesion.setAttribute("contrasena", contrasena);
				//sesion.setAttribute("id", result.getKey());

				System.out.println("bienvenido");				
			} catch (Exception e) {
				e.getMessage();
				System.out.println("no se registro la sesion");
				System.out.println(e.getCause());
				System.out.println(e.getMessage());
			}
			
		} else {
			
			response.sendError(0);
			System.out.println("la contraseña y usuario no coinciden");
		}
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = null;
		
		HttpSession sesion = request.getSession();
        if(sesion.getAttribute("usuario")==null){
        	
        	rd = request.getRequestDispatcher("/index.jsp");
        	rd.forward(request, response);
        }else{
        	try {
            	System.out.println("entre a la sesion");
        		Persona persona;
        		Authenticator authenticator = new Authenticator();
        		persona = authenticator.authenticate((String)sesion.getAttribute("usuario"), (String)sesion.getAttribute("contrasena"));
        		
        		if(persona.getTipo().equalsIgnoreCase("Paciente"))
        			rd = request.getRequestDispatcher("/sucess.jsp");
        		else if(persona.getTipo().equalsIgnoreCase("Doctor"))
        			rd = request.getRequestDispatcher("/sucess_doctor.jsp");
        		else
        			rd = request.getRequestDispatcher("/sucess_admin.jsp");
        		
        		request.setAttribute("user", persona);
        		rd.forward(request, response);
				
			} catch (Exception e) {
				e.getMessage();
				System.out.println("no entro a la sesion");
			}
       }	
	}
}