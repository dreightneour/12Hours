package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.Person;

//import edu.ycp.cs320.lab03.controller.AddNumbersController;

public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("In the Index servlet");
		
		req.getRequestDispatcher("/_view/index.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Person person = new Person(req.getParameter("name"), req.getParameter("country"), req.getParameter("party"));
		req.getSession().setAttribute("person", person);
		//req.getRequestDispatcher("/_view/story.jsp").forward(req, resp);
		resp.sendRedirect("Story");
	}
}
