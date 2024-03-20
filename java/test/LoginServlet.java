package test;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("uname");
		String userpassword = req.getParameter("upassword");

		Userbean ub = new LoginDAO().getLogIn(username, userpassword);

		if (ub == null) {
			req.setAttribute("error", "Invalid Credentials");
			req.getRequestDispatcher("index.jsp").include(req, resp);

		} else {
			HttpSession hs = req.getSession();
			hs.setAttribute("ubean", ub);
			hs.setAttribute("name",username);
			req.getRequestDispatcher("success.jsp").forward(req, resp);

		}

	}

}
