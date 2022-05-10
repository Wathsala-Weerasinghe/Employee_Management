package com.timesheet;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.employee.DBConnect;


public class TimeDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement sts = null;
	private static ResultSet rs = null;

	public static List<Timesheet> validate(String uemail) {
		ArrayList<Timesheet> tsh = new ArrayList<>();
		
				
				//validate
				try {
					con = DBConnect.getConnection();
					
					sts = con.createStatement();
					
					String sql = "select * from emp_time_sheet where emp_email= '"+uemail+"'";
					rs = sts.executeQuery(sql); 
					
					if(rs.next()) {
						int id = rs.getInt(1);
						String email = rs.getString(2);
						String uname = rs.getString(3);
						String mid = rs.getString(4);
						int wTime = rs.getInt(5);
						String wDes= rs.getString(6);
						
						Timesheet e = new Timesheet(id,  email, uname, mid , wTime, wDes);
						tsh.add(e);	
					}
					
				}
				catch(Exception e){
					e.printStackTrace();
				}
		return tsh;
		
	}

	public static boolean insertTsh(String email, String name, String mid, int wTime, String wDes) {
		boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		sts = con.createStatement();
    	    String sql = "insert into emp_time_sheet values (0,'"+email+"','"+name+"','"+mid+"','"+wTime+"','"+wDes+"')";
    		int rs = sts.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
	}
	
	public static boolean updateTime(String id, String email, String name, String mid, int wTime, String wDes) {
		
		
		try {
    		con = DBConnect.getConnection();
    		sts = con.createStatement();
    	    String sql ="update emp_time_sheet set emp_email ='"+email+"', emp_name = '"+name+"', manager_id = '"+mid+"', work_time='"+wTime+"', work_description = '"+wDes+"'"
    		+"where id = '"+id+"'";
    		
    		int rs = sts.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
		
		
		return isSuccess;
		
	}

	public static boolean deleteTime(String id) {
		int conID = Integer.parseInt(id);
		
		try {
    		con = DBConnect.getConnection();
    		sts = con.createStatement();
    	    String sql = "delete from emp_time_sheet where Id = '"+conID+"'";
    		int rs = sts.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
		
		return isSuccess;
		
	}

	public static List<Timesheet> getTSDetails(String id) {
		ArrayList<Timesheet> tsh = new ArrayList<>();
		
		
		//validate
		try {
			con = DBConnect.getConnection();
			
			sts = con.createStatement();
			
			String sql = "select * from emp_time_sheet where emp_email= '"+id+"'";
			rs = sts.executeQuery(sql); 
			
			if(rs.next()) {
				int ID = rs.getInt(1);
				String email = rs.getString(2);
				String uname = rs.getString(3);
				String mid = rs.getString(4);
				int wTime = rs.getInt(5);
				String wDes= rs.getString(6);
				
				Timesheet e = new Timesheet(ID,  email, uname, mid , wTime, wDes);
				tsh.add(e);	
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
return tsh;
	}
	

}
