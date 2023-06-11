package com.core;

import java.io.InputStream;
import java.sql.*;
import java.util.*;


/**
 * <p>Title: </p>
 * <p>Description: 数据库连接</p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */

public final  class Database {
	  public static Connection conn = null;
	  public Statement stmt = null;
	  public ResultSet rs = null;
	  private static String dbClassName;
	  private static String dbUrl;

	 static { 
		   
	    try {
	    	InputStream in = Database.class.getClassLoader().getResourceAsStream("com/connDB.properties");  
	    	Properties prop = new Properties(); 
		      prop.load(in);											//通过输入流对象加载Properties文件
		      dbClassName = prop.getProperty("dbclassName").trim();    	//获取数据库驱动
		      dbUrl = prop.getProperty("dbUrl").trim();    
		      Class.forName(dbClassName);
		    }
		    catch (Exception e) {
		      e.printStackTrace();		//输出异常信息
		    }
    }
	 /**  
	     * 私有构造方法，不需要创建对象  
	     */   
	    private Database() {   
	    }   
	  
	    public static String getDbClassName() {   
	        return dbClassName;   
	    }   
	  
	    public static String getDbUrl() {   
	        return dbUrl;   
	    }   
    public static Connection getConnection() {
	    try {
	      //Class.forName(dbClassName).newInstance();
	      conn = DriverManager.getConnection(dbUrl);
	    }
	    catch (Exception ee) {
	      ee.printStackTrace();
	    }
	    if (conn == null) {
	      System.err.println(
	          "警告: Database.getConnection() 获得数据库链接失败.\r\n\r\n链接类型:" +
	          dbClassName + "\r\n链接位置:" + dbUrl);
	    }
	    return conn;
    }

    public static int getRow(String sql) {
        int i = 0;
        conn = Database.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement("SELECT COUNT(*) FROM " + sql,
                                      ResultSet.TYPE_SCROLL_INSENSITIVE,
                                      ResultSet.CONCUR_READ_ONLY);
            rs = ps.executeQuery();
            if (rs.next()) {
                i = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            i = 0;
        } finally {
            System.out.println("SELECT COUNT(*) FROM " + sql);
            try {
                rs.close();
                ps.close();
            } catch (SQLException e) {}
        }
        return i;
    }
    public static boolean Delete(String sql) {
        boolean b = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(sql);
            if (ps.executeUpdate() > 0) {
                b = true;
            } else {
                b = false;
            }
        } catch (SQLException e) {
            b = false;
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Database.Delete() "+sql);
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {
                ps = null;
            }
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                con = null;
            }
        }
        return b;
    }
}
