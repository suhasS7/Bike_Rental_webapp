package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/register")
public class registerservlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Userbean ub=new Userbean();
		
		ub.setUname(req.getParameter("uname"));
		ub.setFname(req.getParameter("fname"));
		ub.setLname(req.getParameter("lname"));
		ub.setCity(req.getParameter("city"));
		ub.setMobile(req.getParameter("mobile"));
		ub.setLicence(req.getParameter("licence"));
		ub.setPassword(req.getParameter("password"));
		 
		
		int k=RegisterDAO.getIndication(ub);
		
		if(k >= 1) {
			
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
				
		}else {
			
			RequestDispatcher rd=req.getRequestDispatcher("fail.html");
			req.setAttribute("msg", "Failed to add details");
			rd.forward(req, resp);
				
			
		}
		
		
		
		
		
		
		
		
		
		
}}