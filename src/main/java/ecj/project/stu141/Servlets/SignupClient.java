/*** Institute : CMPICA*
 *  Subject : CA843 ECJ* 
 *  Submitted By : 21MCA141* 
 *  Student Name : SOLANKI PARTH R*
 *   Functionality: Signup Credentials Checking Servlet */

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


@WebServlet("/SignupClient")
public class SignupClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc")
	private DataSource dataSource; 
	
   public SignupClient() {
        super();
   }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		 HttpSession session = request.getSession();
			
		String user = request.getParameter("uname");    
	    String pwd = request.getParameter("pass");
	    String fname = request.getParameter("fname");
	    String email = request.getParameter("email");
	    String state = request.getParameter("State");
	    String city = request.getParameter("City");
	    String lmarks = request.getParameter("lmarks");
	    String address = request.getParameter("address");
		Connection Con = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			
			
			Con = dataSource.getConnection();
			
			String sql="INSERT INTO client VALUES(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst=Con.prepareStatement(sql);
			Random r=new Random();
			int k=r.nextInt();
			pst.setInt(1, k );
			pst.setString(2, user);
			pst.setString(3, fname);
			pst.setString(4, email);
			pst.setString(5, address);
			pst.setString(6, lmarks);
			pst.setString(7, state);
			pst.setString(8, city);
			pst.setString(9,pwd);
			
			int i = pst.executeUpdate();
			System.out.print(i);
			if (i==1) {
				
				session.setAttribute("Name", fname);
				session.setAttribute("ID", k);
				
				RequestDispatcher dispatcher=request.getRequestDispatcher("./Homepage");
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


