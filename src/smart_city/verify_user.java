package smart_city;
import java.sql.*;
public class verify_user {
	public static boolean checkLogin(String username,String password, String repassword, String usertype){
		boolean status=false;
		Connection con=DB_connection.DBConnection();
		try {
			PreparedStatement ps=con.prepareStatement("Select * from user_acc where username = ? and password =? and repassword =? and usertype =?");
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3,repassword);
			ps.setString(4,usertype);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

}
