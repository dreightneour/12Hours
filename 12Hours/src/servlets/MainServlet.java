package servlets;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.District;
import main.Person;

//import edu.ycp.cs320.lab03.controller.AddNumbersController;

public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Person presidente;
	Person incumbent;
	private List<District> districts;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("In the Main servlet");
		districts = new ArrayList<District>();
		presidente = (Person)req.getSession().getAttribute("person");
		req.getSession().setAttribute("presidente", presidente);
		Random rand = new Random();
		incumbent = new Person("John Smith", presidente.getCountry(), "Best Party", "HI", rand.nextInt(5) + 1, rand.nextInt(5) + 1);
		req.getSession().setAttribute("incumbent", incumbent);
		for(int i = 0; i < 20; i++)
		{
			districts.add(new District(i, 0, 100+(rand.nextInt(100)-50), rand.nextInt(5), 50, 100 + (rand.nextInt(100)-50)));
		}
		req.setAttribute("dlist", districts);
		req.getRequestDispatcher("/_view/main.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	}
}
