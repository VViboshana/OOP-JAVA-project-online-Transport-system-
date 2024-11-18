package AdminLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Aname = request.getParameter("Aname");
		String Aemail = request.getParameter("Aemail");
		String Aphon = request.getParameter("Aphon");
		String Apassword = request.getParameter("Apassword");
		
boolean isTrue;
		
		isTrue = RegControler.insertdata(Aname, Aemail, Aphon, Apassword);
		
		if (isTrue == true) {
		    String alertMessage = "Registration Successfully";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='login.jsp';</script>");
		    // using done.jsp redirect the page to another page if successfully insert data
		} else {
		    RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
		    dis2.forward(request, response);
		}
	}

}
