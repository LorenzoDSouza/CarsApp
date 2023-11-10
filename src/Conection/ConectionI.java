package Conection;

import java.sql.*;

public class ConectionI{
	
	public static void main (String args[]) {
		try {
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carros", "root", "Enzo2015@");
		Statement stmt = con.createStatement();
		String selectHP = "SELECT hp FROM inventario WHERE modelo_id = 1";
		
		System.out.println("Querry in process: " + selectHP);
		
		ResultSet rs = stmt.executeQuery(selectHP);
		
		
		while (rs.next()) {
            int hp = rs.getInt("hp");
            System.out.println("Querry result: ");
            System.out.println("HP: " + hp);
        }
		
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		finally {
			//the interfaces where created inside de block "try", so I dont need to close then. But, if they where 
			//instanciated outside of the block, it will be needed to close them, with the method .close()
			
		}
	}
}