package pkgdbconnection3;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pkguserBeans.LoginBean;

public class Db_insert extends  Db_Connection{
	
	
	public boolean  insert(String firstname, String lastname, int phone,String email,String password) throws SQLException
	{
		PreparedStatement pt;
		
			pt = super.con
			
		.prepareStatement("insert into tbl_user(first_name,last_name,phone,email,password)values(?,?,?,?,?)");
		pt.setString(1,firstname);
			pt.setString(2,lastname);
			pt.setInt(3, phone);
			pt.setString(4,email);
			pt.setString(5,password);
			boolean y= pt.execute();
			
			System.out.println("inserted");
				
		
		return y;
		
	    
	}
	public int select(String uname,String pswd)
	{	
	
		PreparedStatement pt1;
		try {
			pt1 = super.con
			
		.prepareStatement(("call test1(?,?)"));
		pt1.setString(1, uname);
		pt1.setString(2, pswd);
		pt1.execute();
			ResultSet rs = pt1.executeQuery();
            while(rs.next())
            {
            	String email= rs.getString("email");
            	String password=rs.getString("password");
            	System.out.println("Email:"+ email);
            	System.out.println("Password:"+password);	
                     
            }
         
        
			
			System.out.println("selected");
			
		}
		catch (SQLException e) {
			e.printStackTrace();
			//System.out.println("not inserted");
		}
		return 1;
		
		
	}
	public ResultSet  store(String email, String password) throws SQLException
	{
		PreparedStatement pt2;
		pt2=super.con.
		//prepareStatement("select email,password from tbl_user where email=?, password=?");
				prepareStatement("call test(?,?)");
		pt2.setString(1,email);
		pt2.setString(2,password);
		pt2.execute();

     ResultSet rs = pt2.executeQuery();
    
     
     
           
     return rs;
	}
	
	/*public void callsptest(String uname, String pswd) throws SQLException
	{
		PreparedStatement pt1;
		pt1=super.con.prepareStatement("call test(?,?)");
		pt1.execute();
		
	}*/
	public static void main(String[] args)
	{
		Db_insert db=new Db_insert();
		db.select("sreeck@gmail.com","qwerty");
		
		//System.out.println(db);
	//	db.insert("adhidhya","kp", 789065,"abc@gmail.com", "qwerty");

		
		
	 
}

}
