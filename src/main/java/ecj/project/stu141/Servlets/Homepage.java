package ecj.project.stu141.Servlets;

import java.io.Console;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import ecj.project.stu141.Utils.*;
import ecj.project.stu141.data.Carsdata;

@WebServlet("/Homepage")
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private getcars cl;
	private checklogin ck;
	@Resource(name="jdbc")
	private DataSource dataSource;
	
	
	@Override
	public void init() throws ServletException {
	
		super.init();
	try {
		
		cl=new getcars(dataSource);
		ck=new checklogin(dataSource);
		
	}
	catch(Exception e) {
		
		throw new ServletException(e);
	}
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		
			try {
			
				
			
					getData(req,resp);	
					
				
			}
		
		catch(Exception e) {
			throw new ServletException(e);
		}	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			doPost(request, response);
	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				}


	private void checkLogin(HttpServletRequest request, HttpServletResponse response) throws Exception{
	
			String uname=request.getParameter("uname");
			String Pass=request.getParameter("password");
			String name= ck.login(uname, Pass);
			if(!name.isEmpty())
			{
				request.setAttribute("Name", name);
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


	private void getData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Carsdata> cars=cl.getCars();
		request.setAttribute("CarList", cars);
		RequestDispatcher dispatcher=request.getRequestDispatcher("/homepage.jsp");
		dispatcher.forward(request, response);
	}
}
