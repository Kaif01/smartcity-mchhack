package smart_city;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DB_connection {
	private DB_connection(){}

	public static Connection con;
	static{
		try {
			Class.forName(DB_initialize.DRIVER);
			con=DriverManager.getConnection(DB_initialize.CON_STRING,DB_initialize.USERNAME,DB_initialize.PASSWORD);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			System.out.println("Exception in GetCon");
		}
		
	}
	public static Connection DBConnection(){
		return con;
	}



	public static int getPrimaryKey(String str){
		int nextvalue=0;
		Connection con=DB_connection.DBConnection();
		PreparedStatement ps2;
		try {
		ps2=con.prepareStatement("select Count(*) from "+str+"");
		ResultSet rs=ps2.executeQuery();
		rs.next();
		nextvalue=rs.getInt(1);
		
		
	} catch (SQLException e) {
			
			e.printStackTrace();
		}
	return (nextvalue+1);

	}

}

