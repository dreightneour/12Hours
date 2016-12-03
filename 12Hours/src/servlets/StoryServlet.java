package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.Person;

//import edu.ycp.cs320.lab03.controller.AddNumbersController;

public class StoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//System.out.println("In the Story servlet");
		
		req.getRequestDispatcher("/_view/story.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Person person = (Person) req.getSession().getAttribute("person");
		String time=req.getParameter("time");
		String origin = req.getParameter("origin");
		person.setOrigin(Integer.parseInt(origin));
		person.setTime(Integer.parseInt(time));
		req.getSession().setAttribute("person", person);
		resp.sendRedirect("Main");
	}
}
