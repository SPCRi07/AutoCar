/*** Institute : CMPICA*
 *  Subject : CA843 ECJ* 
 *  Submitted By : 21MCA141* 
 *  Student Name : SOLANKI PARTH R*
 *   Functionality: Retrieving the already booked services Servlet */

package ecj.project.stu141.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


@WebServlet("/ViewBooking")
public class ViewBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Resource(name="jdbc")
	private DataSource dataSource;
	
    public ViewBooking() {
        super();
      }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		 HttpSession session = request.getSession(false);
		String id=(String) session.getAttribute("ID");
		Connection Con = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			
			
			Con = dataSource.getConnection();
			
			String sql="select * from booking where employeeid=?";
			
			PreparedStatement pst=Con.prepareStatement(sql);
			pst.setString(1, id);
			
			myRs = pst.executeQuery();
			
			if (myRs.next()) {	
				
					request.setAttribute("bookings", myRs);
					RequestDispatcher dispatcher=request.getRequestDispatcher("/ViewService.jsp");
					
				dispatcher.forward(request, response);
			}
			else
			{
				request.setAttribute("Error", "Your Name is not Found");
				RequestDispatcher dispatcher=request.getRequestDispatcher("/Login.jsp");
				dispatcher.forward(request, response);
			}
		
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}

		
		
	}

}
