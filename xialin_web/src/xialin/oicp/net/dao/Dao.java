package xialin.oicp.net.dao;

import java.sql.Connection;

public class Dao {
	
	public Connection conn = null;
	
	public Dao(){}
	
	public Connection getConnection(){
		try{
			Class.forName("");
		}catch(Exception e){
			
		}
		return null;
	}
}
