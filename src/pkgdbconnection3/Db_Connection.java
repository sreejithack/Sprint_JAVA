package pkgdbconnection3;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Db_Connection {
	
	
		public Connection con=null;
		public Db_Connection(){
			{
				try {
					Class.forName("com.mysql.jdbc.Driver");
				} catch (ClassNotFoundException e1) {
					
					e1.printStackTrace();
				}
				try {
					this.con=DriverManager.getConnection("jdbc:mysql://localhost/facebook_db", "root", "");
					if (this.con != null) {
						
						System.out.println("connected");
					}
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
			
		}
		


}
