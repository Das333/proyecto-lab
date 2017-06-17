package episunsa;
import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class RemoveAll extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("text/plain");		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Persona.class);
			try{
				q.deletePersistentAll();
				/* --------------------------------------------------------
				 */
				//@SuppressWarnings("unchecked")
				//List<Persona> personas = (List<Persona>) q.execute(color);
				//for(Persona p: personas){
					//pm.deletePersistent(p);
				//}
				/* ---------------------------------------------------------
				 */
				resp.getWriter().println("Se han borrado todas personas.");
				resp.sendRedirect("/getList");
			}catch(Exception e){
					System.out.println(e);
					resp.getWriter().println("No se han podido borrar todas personas.");
					resp.sendRedirect("/index.jsp");
			}finally{
				q.closeAll();
				pm.close();
			}				
	}
}

