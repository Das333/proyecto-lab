package episunsa;

import java.io.IOException;

import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Out extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		HttpSession sesion = req.getSession();	
		sesion.invalidate();
        resp.sendRedirect("/inicio");
	}
}
