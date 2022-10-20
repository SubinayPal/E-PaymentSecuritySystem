package p1;
import java.sql.*;
public class Connect {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public Connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_epss","root","");  
			System.out.println("Connected..");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean saveRecord(String name, String email, String contact, String uid, String pwd)
	{
		boolean b = false;
		try {
			String sql = "insert into tbl_newuser(name,email,contact,uid,pwd) values(?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, contact);
			ps.setString(4, uid);
			ps.setString(5, pwd);
			
			int n = ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}
	public boolean checkRecord(String uid, String pwd) {
		boolean b = false;
		try {
			String sql = "select * from tbl_newuser where uid=? and pwd=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, pwd);
			rs=ps.executeQuery();
			if(rs.next())
			{
				b = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
}
