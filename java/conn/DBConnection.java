package conn;

import static conn.DBInfo.*;
import java.sql.*;

public class DBConnection {
	private static Connection con = null;

	private DBConnection() {
	}

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(dbUrl, uName, pWord);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}// end of block

	public static Connection getCon() {
		return con;
	}
}
