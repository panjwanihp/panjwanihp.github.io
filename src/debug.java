

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/debug")
public class debug extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public debug() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("key");
		System.out.println(id);
		System.out.println("yes im in get send by the Register");
		HttpSession session= request.getSession();
		System.out.println("created");
		session.setAttribute("key",id);
		System.out.println(session.getAttribute("key"));
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		session.setAttribute("teamid",null);
	}

}
