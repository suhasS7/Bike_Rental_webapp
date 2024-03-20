package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

import conn.DBConnection;

public class LoginDAO {

	public Userbean getLogIn(String username, String userpassword) {
		try {
			Connection con = DBConnection.getCon();
			Userbean ub = new Userbean();
			PreparedStatement ps = con.prepareStatement("select * from userdetails where uname=? and upassword=?");
			ps.setString(1, username);
			ps.setString(2, userpassword);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				ub.setUname(rs.getString(1));
				ub.setFname(rs.getString(2));
				ub.setLname(rs.getString(3));
				ub.setCity(rs.getString(4));
				
				ub.setLicence(rs.getString(5));
				ub.setMobile(rs.getString(6));
				ub.setPassword(rs.getString(7));

				return ub;
			} else {
				System.out.println("else");
				return null;
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
			return null;
		}

	}
}
