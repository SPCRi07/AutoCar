package ecj.project.stu141.Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ecj.project.stu141.data.Carsdata;

public class checklogin {
	
	private DataSource dataSource;
	
	public checklogin(DataSource thedataSource)
	{
		
	dataSource=thedataSource;
	}
	
	public String login(String uname,String Pass) throws Exception {
		
		
		Connection Con=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {

			Con=dataSource.getConnection();
			String sql="select Name from client where Emailaddress=? AND  password=? ";
			PreparedStatement pst=Con.prepareStatement(sql);
			pst.setString(1, uname);
			pst.setString(2, Pass);
			rs= pst.executeQuery();
			//String name=rs.getString(1);
				return "abc";
		}
		
		
		finally {
				close(Con,st,rs);

		}
		
	}

	private void close(Connection con, Statement st, ResultSet rs) {
	
		try {
			
			if(rs!=null)
			{
				rs.close();
			}
			if(st!=null)
			{
				st.close();
			}
			if(con!=null)
			{
				con.close();
			}
		}
		catch(Exception e){
				e.printStackTrace();
		}
	}
}
