package smart_city;
import java.sql.*;
public class register_user {
	static int status=0;
	public static int register(String name, String username,String address,String password,String repassword,String email,double phone, String usertype){


		Connection con=DB_connection.DBConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into user_acc values(?,?,?,?,?,?,?,?,?)");
			int	nextvalue1=DB_connection.getPrimaryKey("user_acc");
			ps.setInt(1,nextvalue1);
			ps.setString(2,name);
			ps.setString(3,username);
			ps.setString(4,address);
			ps.setString(5,password);
			ps.setString(6,repassword);
			ps.setString(7,email);
			ps.setDouble(8,phone);
			ps.setString(9,usertype);
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	

		
	
}
