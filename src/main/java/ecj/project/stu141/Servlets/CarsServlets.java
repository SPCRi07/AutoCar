/*** Institute : CMPICA*
 *  Subject : CA843 ECJ* 
 *  Submitted By : 21MCA141* 
 *  Student Name : SOLANKI PARTH R*
 *   Functionality:  Main Servlet for retrieving Services of the car  */
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
import javax.sql.DataSource;

@WebServlet("/CarsServlets")
public class CarsServlets extends HttpServlet {
	
	@Resource(name="jdbc")
	private DataSource dataSource;   
   
    public CarsServlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		String uname=request.getParameter("cartype");
		String Pass=request.getParameter("password");
		
		Connection Con = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			
			
			Con = dataSource.getConnection();
			
			String sql="select * from cartype";
			Statement pst=Con.createStatement();
			
			myRs = pst.executeQuery(sql);
			
			if (myRs.next()) {
				
				RequestDispatcher dispatcher=request.getRequestDispatcher("/Cars.jsp");
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
