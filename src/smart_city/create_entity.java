package smart_city;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class create_entity {
	static int status=0;
	public static int college(String name, String address,String email,String department){


		Connection con=DB_connection.DBConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into college values(?,?,?,?,?)");
			int	nextvalue1=DB_connection.getPrimaryKey("college");
			ps.setInt(1,nextvalue1);
			ps.setString(2,name);
			ps.setString(3,address);
			ps.setString(4,email);
			ps.setString(5,department);
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	public static int library(String name, String address,String email,double phone){


		Connection con=DB_connection.DBConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into library values(?,?,?,?,?)");
			int	nextvalue1=DB_connection.getPrimaryKey("library");
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
	
	public static int hotel(String name, String address,String email,double phone){


		Connection con=DB_connection.DBConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into hotel values(?,?,?,?,?)");
			int	nextvalue1=DB_connection.getPrimaryKey("hotel");
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
