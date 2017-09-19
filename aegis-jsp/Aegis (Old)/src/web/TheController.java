package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TheController 
{
	@RequestMapping({"/","/home"})
	public void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("WEB-INF/view/map.jsp").forward(request, response);
	}
	
	@RequestMapping("/contactNum")
	public void contactNum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("WEB-INF/view/contactNumbers.jsp").forward(request, response);
	}
	
	@RequestMapping("/infographics")
	public void infographics(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("WEB-INF/view/infographics.jsp").forward(request, response);
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public void loginPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String pw = request.getParameter("password");
		
		System.out.println(username+pw);
		request.getRequestDispatcher("WEB-INF/view/map.jsp").forward(request, response);
		
	}
	
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public void signupPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String pw = request.getParameter("password");
		
		System.out.println(username+pw);
		request.getRequestDispatcher("WEB-INF/view/map.jsp").forward(request, response);
		
	}
	
	
	
}
