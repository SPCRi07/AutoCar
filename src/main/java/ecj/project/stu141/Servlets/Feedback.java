/*** Institute : CMPICA*
 *  Subject : CA843 ECJ* 
 *  Submitted By : 21MCA141* 
 *  Student Name : SOLANKI PARTH R*
 *   Functionality: Feedback  Servlet s*/

package ecj.project.stu141.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc")
	private DataSource dataSource; 
	
    public Feedback() {
        super();
     }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		 HttpSession session = request.getSession();
			
		String firstname = request.getParameter("firstname");    
	    String lastname = request.getParameter("lastname");
	    String contact = request.getParameter("contact");
	    String rating = request.getParameter("rating");
	    String subject = request.getParameter("subject");
	    String id=(String) session.getAttribute("ID");
	    
	   Connection Con = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			
			
			Con = dataSource.getConnection();
			
			String sql="INSERT INTO feedback VALUES(?,?,?,?,?,?)";
			PreparedStatement pst=Con.prepareStatement(sql);
			Random r=new Random();
			int k=r.nextInt();
			pst.setInt(1, k );
			pst.setString(2, id);
			pst.setString(3, contact);
			pst.setString(4, rating);
			pst.setString(5, subject);
			pst.setString(6, firstname);
			
			int i = pst.executeUpdate();
			System.out.print(i);
			if (i==1) {
				
			RequestDispatcher dispatcher=request.getRequestDispatcher("thankyou.jsp");
				dispatcher.forward(request, response);
			}
			else
			{
				request.setAttribute("Error", "Sorry Can't create your Account");
				RequestDispatcher dispatcher=request.getRequestDispatcher("/Login.jsp");
				dispatcher.forward(request, response);
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}

}
