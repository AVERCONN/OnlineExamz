package dao;

import java.sql.*;

public class DBOperPaper {
	Connection conn=null;
	PreparedStatement pstmt=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	public Connection getConn(String server,String db,String user,String pwd)
	throws ClassNotFoundException,InstantiationException,IllegalAccessException,SQLException {
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://"+server+":3307/"+db+"?user="+user
				+"&password="+pwd+"&useUnicode=true&charactorEncoding=UTF-8";
		Class.forName(driver).newInstance();
		conn=DriverManager.getConnection(url);
		return conn;                     //获取连接
	}
	
	public ResultSet executeQuery(String sql,String[] params) {           //获取写入数据库的结果集
		try {
			pstmt=conn.prepareStatement(sql);
			if(params!=null) {
				for(int i=0;i<params.length;i++) {
					pstmt.setString(i+1, params[i]);
				}
			}
			rs=pstmt.executeQuery();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public int executeUpdate(int flag,String sql) {             //更新数据库，多一个int参数避免重写原方法
		int n=0;
		try {
			stmt=conn.createStatement();
			if(stmt!=null) {
				n=stmt.executeUpdate(sql);
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	public int executeUpdate(String sql,String[] params) {             //更新数据库
		int n=0;
		try {
			pstmt=conn.prepareStatement(sql);
			if(params!=null) {
				for(int i=0;i<params.length;i++) {
					pstmt.setString(i+1, params[i]);
				}
			}
			n=pstmt.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	public ResultSet getResultSet(String sql) {             //获取读数据库的结果集
		try {
			stmt=conn.createStatement();
			if(stmt!=null) {
				rs=stmt.executeQuery(sql);
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public void closeAll() {               //关闭所有结果集和连接
		if(rs!=null) {
			try {
				rs.close();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt!=null) {
			try {
				pstmt.close();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt!=null) {
			try {
				stmt.close();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
