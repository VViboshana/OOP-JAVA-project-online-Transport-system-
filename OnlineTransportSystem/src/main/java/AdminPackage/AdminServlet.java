package AdminPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String responsedDate = request.getParameter("responsedDate");
		String adminResponse = request.getParameter("adminResponse");
		
		boolean isTrue;
		
		isTrue = AdminControle.insertdata(username, firstName, lastName, responsedDate, adminResponse);
		
		if (isTrue == true) {
		    String alertMessage = "Data Inserted Successfully";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AdminGetAllServlet';</script>");
		    // using done.jsp redirect the page to another page if successfully insert data
		} else {
		    RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
		    dis2.forward(request, response);
		}
		
	}

}
