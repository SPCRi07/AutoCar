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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/BookService")
public class BookService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc")
	private DataSource dataSource;   
   public BookService() {
        super();
    }

	@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		
		 String pickup=request.getParameter("pickup");
		 String Price=request.getParameter("Price");
		 String subid=request.getParameter("subid");
		 String subserviceid=request.getParameter("subserviceid");
		 String carname=request.getParameter("carmodel"); 
		 String cartypeid=request.getParameter("cartypeid"); 
		 String email=request.getParameter("email");
		 String cartype=request.getParameter("cartype"); 
		 String phone =request.getParameter("phone");
		 String pay =request.getParameter("pay"); 
		 
		Connection Con = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			
			
			Con = dataSource.getConnection();
			
			String sql="INSERT INTO booking VALUES(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst=Con.prepareStatement(sql);
			Random r=new Random();
			pst.setInt(1,  r.nextInt());
			pst.setString(2, subid);
			pst.setString(3, pickup);
			pst.setString(4, cartype);
			pst.setString(5, carname);
			pst.setString(6, pay);
			pst.setString(7, phone);
			pst.setString(8, null);
			pst.setString(9,"Done");
			pst.setString(10, "Booked");
			
			int i = pst.executeUpdate();
			System.out.print(i);
			if (i==1) {
				RequestDispatcher dispatcher=request.getRequestDispatcher("/ServiceBooked.jsp");
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
