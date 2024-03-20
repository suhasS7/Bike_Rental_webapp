
package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/bikesection")
public class BikeSelectionServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession hs=req.getSession();
		
		
		if(hs==null) {
			req.setAttribute("msg", "session Expired");
			req.getRequestDispatcher("fail.jsp").forward(req, resp);
		}else {
			String bikeid = req.getParameter("param1");
			hs.setAttribute("bikeid", bikeid);
			Bikebean bike=(Bikebean)new BookDAO().getBike(Integer.parseInt(bikeid));
			hs.setAttribute("bike", bike);
			
			req.getRequestDispatcher("booked.jsp").forward(req, resp);
			
		}
		
	}

}