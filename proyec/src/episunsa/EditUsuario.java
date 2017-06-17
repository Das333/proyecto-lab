package episunsa;

import java.io.IOException;

//import javax.jdo.PersistenceManager;
//import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class EditUsuario extends HttpServlet {
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
		String CorreoUsu = req.getParameter("e_correo");
		String ContraUsu = req.getParameter("e_contrasenia");
		long id = Long.parseLong((String)req.getParameter("key"));
		//final PersistenceManager pm = PMF.get().getPersistenceManager();
		System.out.println("datos con tipo");		
		
		try
		{
			HttpSession sesion = req.getSession();
			Persona persona;
    		Authenticator authenticator = new Authenticator();
    		persona = authenticator.authenticate((String)sesion.getAttribute("usuario"), (String)sesion.getAttribute("contrasena"));
    		if(persona.getKey() == id)
			{
				sesion.setAttribute("usuario", correo);
				sesion.setAttribute("contrasena", contrasenia);
			}
			//RequestDispatcher rd = null;
			Persona p = authenticator.authenticate(CorreoUsu, ContraUsu);
			//Persona p = pm.getObjectById(Persona.class,nombre);
			p.setNombre(nombre);
			p.setCorreo(correo);
			p.setContrasena(contrasenia);
			p.setDni(dni);
			p.setTipo(tipo);
			p.setTelefono(telefono);
			p.setGenero(genero);
			p.setNacDia(dia);
			p.setNacMes(mes);
			p.setNacAnio(anio);
			//pm.makePersistent(p);
			//rd = req.getRequestDispatcher("/usuarios");
			resp.sendRedirect("/usuarios");
			//resp.getWriter().println("Datos editados correctamente.");
			//rd.forward(req, resp);
			System.out.println("datos editados");
		}
		catch(Exception e)
		{
			System.out.println(e);
			//resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			System.out.println("error");
		}
	}
}