/*** Institute : CMPICA*
 *  Subject : CA843 ECJ* 
 *  Submitted By : 21MCA141* 
 *  Student Name : SOLANKI PARTH R*
 *   Functionality: Passing the cars data to servlet via this class*/

package ecj.project.stu141.Utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ecj.project.stu141.data.Carsdata;

public class getcars {
	
	private DataSource dataSource;
	
	public getcars(DataSource thedataSource)
	{
		
	dataSource=thedataSource;
	}
	
	public List<Carsdata> getCars() throws Exception {
		
		List<Carsdata> Cars=new ArrayList<>();
		
		Connection Con=null;
		Statement st=null;
		ResultSet rs=null;
		
		try {

			Con=dataSource.getConnection();
			String sql="select * from cars";
			st=Con.createStatement();
			rs=st.executeQuery(sql);

				while(rs.next()) {
					
					int id=rs.getInt("id");
					String cartype=rs.getString("cartype");
					String carimage=rs.getString("carimage");
					String carname=rs.getString("carname");
					Carsdata temp=new Carsdata(id,carname,cartype,carimage);					
					Cars.add(temp);							
				}
				return Cars;
				
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
