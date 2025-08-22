package com.payment2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class paymentDBUtil {
	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs = null;

public static boolean insertdata(String fullname ,String email,String address,String cardname,String cardnumber) {
		
		boolean isSuccess = false;
		
try {
            //  connection
			con=dbconector.getConnection();
			stmt=con.createStatement();
			// SQL Select query
			String sql ="INSERT INTO pay VALUES(0,'"+fullname+"','"+email+"','"+address+"','"+cardname+"','"+cardnumber+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
     }

public static List<payment> getGames(String pId) {
	int convertedID = Integer.parseInt(pId);
    ArrayList<payment> gameList = new ArrayList<>();
    
    
    
    try {
        
       

        //  connection
        con = dbconector.getConnection();
        stmt = con.createStatement();
        // SQL Select query
        String sql = "SELECT * FROM pay where pid ='"+convertedID+"'"  ;
        
         rs = stmt.executeQuery(sql);

        // Loop through result set and create Game objects
         while(rs.next()) {
        	 int pid=rs.getInt(1);
        	String fullname = rs.getString(2);
		    String email = rs.getString(3);
			String address = rs.getString(4);
			String cardname = rs.getString(5);
			String cardnumber = rs.getString(6);

			payment c = new payment( pid,fullname,email,address,cardname,cardnumber);
            gameList.add(c);
        }


    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return gameList;
}

public static List<payment> getAllGames(){
	ArrayList<payment> gameLists = new ArrayList<>();
	
    try {
        
        

        // Establish connection
        con = dbconector.getConnection();
        stmt = con.createStatement();
        // SQL Select query
        String sql = "SELECT * FROM pay";
        
         rs = stmt.executeQuery(sql);

        // Loop through result set and create Game objects
         while(rs.next()) {
        	 int pid=rs.getInt(1);
        	String fullname = rs.getString(2);
		    String email = rs.getString(3);
			String address = rs.getString(4);
			String cardname = rs.getString(5);
			String cardnumber = rs.getString(6);

			payment c = new payment( pid,fullname,email,address,cardname,cardnumber);
            gameLists.add(c);
        }

        // Close the connection
        con.close();

    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return gameLists;	
	
}

//Update Data
public static boolean updatedata(String pid,String fullname ,String email,String address,String cardname,String cardnumber) {
	boolean isSuccess = false;
	
	try {
		//DBConnection
		 con = dbconector.getConnection();
	     stmt = con.createStatement();
	    //SQL query
	     String sql="update pay set fullname='"+fullname+"',email='"+email+"',address='"+address+"',cardname='"+cardname+"',cardnumber='"+cardnumber+"'"
	    		 +"Where pid='"+pid+"'";
	     int rs=stmt.executeUpdate(sql);
	     
	     if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
	     
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}

//delete data

public static boolean deletedata(String id) {
	boolean isSuccess = false;
	
	int convID = Integer.parseInt(id);
	try {
		//DBConnection
		 con = dbconector.getConnection();
	     stmt = con.createStatement();
	   //SQL query
	     String sql = "delete from pay where pid='" + convID + "'";
	     int rs=stmt.executeUpdate(sql);
	     
	     if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
	     
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	
}




}