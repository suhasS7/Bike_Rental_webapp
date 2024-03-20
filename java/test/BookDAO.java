package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.DBConnection;

public class BookDAO {
	
	public Bikebean getBike(int id) {
		
		Bikebean bb=new Bikebean();
		Connection con=DBConnection.getCon();
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from bikes where bid=?");
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				bb.setBid(rs.getInt(1));
				bb.setBname(rs.getString(2));
				bb.setBtype(rs.getString(3));
				bb.setBrent(rs.getDouble(4));
				bb.setBnumber(rs.getString(5));
				System.out.println("bb");
				return bb;
				
			}else {
				System.out.println("ex in else");
				return null;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("ex in bookdao");
			e.printStackTrace();
			return null;
		}
		
		
		
	}

}
