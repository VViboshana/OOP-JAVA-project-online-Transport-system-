package AdminLogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Aemail = request.getParameter("Aemail");
		String Apassword = request.getParameter("Apassword");
		
		try {
			List<RegModel> adminLogin = RegControler.loginValidate(Aemail, Apassword);
			if(adminLogin != null && !adminLogin.isEmpty()) {
				 String alertMessage = "Login Successful";
				 response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AdminDashboard.jsp';</script>");
			}
			else {
				String alertMessage = "Invalid Credentials, plase try again";
				 response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='login.jsp';</script>");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			}
		
	}

}
















