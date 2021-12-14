package ecj.project.stu141.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/ClientLogin")
public class ClientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@Resource(name="jdbc")
	private DataSource dataSource;

    public ClientLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		String uname=request.getParameter("uname");
		String Pass=request.getParameter("password");
		
		Connection Con = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			
			
			Con = dataSource.getConnection();
			
			String sql="select * from client where Emailaddress=? and password=?";
			PreparedStatement pst=Con.prepareStatement(sql);
			pst.setString(1, uname);
			pst.setString(2, Pass);
			
			myRs = pst.executeQuery();
			
			while (myRs.next()) {
				String email = myRs.getString("Name");
				out.println(email);
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
