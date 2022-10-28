package p1;
import java.sql.*;
import java.util.ArrayList;
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
	
	
	public boolean saveReceiverRecord(String tid, String accountnumber, String hname, String phonenumber, String email, String date, String amount)
	{
		boolean b = false;
		try {
			String sql = "insert into tbl_receiver_info(tid, accountnumber, hname, phonenumber, email, date, amount) values(?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, tid);
			ps.setString(2, accountnumber);
			ps.setString(3, hname);
			ps.setString(4, phonenumber);
			ps.setString(5, email);
			ps.setString(6, date);
			ps.setString(7, amount);
			
			int n = ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}	
	public ArrayList<ReceiverInfo> getReciverData()
	{
		ArrayList<ReceiverInfo> arr=new ArrayList<ReceiverInfo>();
		try {
		String sql="SELECT * FROM tbl_receiver_info";
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next())
		{
			ReceiverInfo obj=new ReceiverInfo();
			obj.setTid(rs.getString(1));
			obj.setAccountnumber(rs.getString(2));
			obj.setHname(rs.getString(3));
			obj.setPhonenumber(rs.getString(4));
			obj.setEmail(rs.getString(5));
			obj.setDate(rs.getString(6));
			obj.setAmount(rs.getString(7));
			arr.add(obj);
			
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return arr;
	}
	

}
