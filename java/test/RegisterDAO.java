package test;
import conn.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDAO {

	public static  int getIndication(Userbean ub) {
		int k=0;
		Connection con = DBConnection.getCon();
		try {
			PreparedStatement ps = con.prepareStatement("insert into userdetails values(?,?,?,?,?,?,?)");
			ps.setString(1, ub.getUname());
			ps.setString(2, ub.getFname());
			ps.setString(3, ub.getLname());
			ps.setString(4, ub.getCity());
			ps.setString(5, ub.getLicence());
			ps.setString(6,ub.getMobile());
			ps.setString(7, ub.getPassword());
			
			k=ps.executeUpdate();
			
		} catch (SQLException ex) {
			
		}
		return k;
	}
}
