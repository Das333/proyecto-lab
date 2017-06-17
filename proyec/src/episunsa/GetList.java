package episunsa;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

	@SuppressWarnings("serial")
	public class GetList extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			//resp.setContentType("text/plain");
			
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Persona.class);
			
			if( req.getParameter("color")!=null ){
				
				String color = req.getParameter("color");
				//q.setOrdering("key ascending");
				q.setOrdering("key descending");
				q.setRange(0, 10);
				q.setFilter("color == colorParam");
				q.declareParameters("String colorParam");
				
				try{
					
					@SuppressWarnings("unchecked")
					List<Persona> personas = (List<Persona>) q.execute(color);
					req.setAttribute("personas", personas);
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/getList.jsp");
					rd.forward(req, resp);
				
				}catch(Exception e){
					System.out.println(e);
				}finally{
					q.closeAll();
					pm.close();
				}
				
			}else {
				q.setOrdering("key descending");
				q.setRange(0, 10);
						 
				try{
					@SuppressWarnings("unchecked")
					List<Persona> personas = (List<Persona>) q.execute();
					req.setAttribute("personas", personas);
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/getList.jsp");
					rd.forward(req, resp);
				}catch(Exception e){
					System.out.println(e);
				}finally{
					q.closeAll();
					pm.close();
				}
			}			
		}
	}

	