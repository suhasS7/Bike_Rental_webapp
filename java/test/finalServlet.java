package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/final")
public class finalServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs=req.getSession();
		
		if(hs==null) {
			req.setAttribute("msg", "session Expired");
			req.getRequestDispatcher("fail.jsp").forward(req, resp);
		}else {
			String days = req.getParameter("days");
			req.setAttribute("days", days);
			req.getRequestDispatcher("final.jsp").forward(req, resp);
			
		}
		
	}

}
