package episunsa;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Remove extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/plain");		
		String correo = req.getParameter("correo");
		
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Persona.class);
			q.setFilter("correo == correoParam");
			q.declareParameters("String correoParam");	
			try{
				q.deletePersistentAll(correo);
				
				resp.getWriter().println("Se han borrado personas.");
				resp.sendRedirect("/usuarios");
			}catch(Exception e){
					System.out.println(e);
					resp.getWriter().println("No se han podido borrar personas.");
					//resp.sendRedirect("/index.jsp");
			}finally{
				q.closeAll();
				pm.close();
			}			
	
	}
}

