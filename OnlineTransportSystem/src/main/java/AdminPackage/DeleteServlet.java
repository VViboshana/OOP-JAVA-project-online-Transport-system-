package AdminPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		boolean isTrue;
		isTrue = AdminControle.deletedata(userId);
		if (isTrue == true) {
		    String alertMessage = "Data Deleted Successfully";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AdminGetAllServlet';</script>");
		}
		else {
			List <AdminModel> updateDetails = AdminControle.getById(userId);
			request.setAttribute("updateDetails", updateDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
	}

}
