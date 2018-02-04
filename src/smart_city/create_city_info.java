package smart_city;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class create_city_info {
	static int status=0;
	
	
		
	
	public static int mall(String name, String address,String email,double phone){


		Connection con=DB_connection.DBConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into mall values(?,?,?,?,?)");
			int	nextvalue1=DB_connection.getPrimaryKey("mall");
			ps.setInt(1,nextvalue1);
			ps.setString(2,name);
			ps.setString(3,address);
			ps.setString(4,email);
			ps.setDouble(5,phone);
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	public static int restaurant(String name, String address,String email,double phone){


		Connection con=DB_connection.DBConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into restaurant values(?,?,?,?,?)");
			int	nextvalue1=DB_connection.getPrimaryKey("restaurant");
			ps.setInt(1,nextvalue1);
			ps.setString(2,name);
			ps.setString(3,address);
			ps.setString(4,email);
			ps.setDouble(5,phone);
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	
}
