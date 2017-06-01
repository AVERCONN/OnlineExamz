package OnliServlet;

import java.sql.Statement;
import java.sql.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegiServlet() {
    	super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String driver="com.mysql.jdbc.Driver";  
		 String url = "jdbc:mysql://localhost:3307/examinationsystem?user=root&password=123";//数据库已经设置了编码，这里不需要再设置
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 PrintWriter out=response.getWriter();
		 try{
			 //接收注册的信息
			 String username=request.getParameter("no");
			 String password=request.getParameter("pwd");
			 String sname=request.getParameter("nam");
			 
			 String sex=request.getParameter("xb");
			 String xueli=request.getParameter("xueli");
			 String card=request.getParameter("sfzh");
			 String address=request.getParameter("addr");
			 String university=request.getParameter("yuanx");
			 String special=request.getParameter("spe");
			 String telephone=request.getParameter("telephone");
			 String email=request.getParameter("email");
			 Class.forName(driver); 
			 Connection conn=DriverManager.getConnection(url);
			 Statement stmt = conn.createStatement();		 
			 ResultSet rs = stmt.executeQuery("select * from student where username='"+username+"'");//在student表查找是否存在同样的用户名
			 if(rs.next()){//如果存在同样的用户名，则提示"用户名已存在！"
		          rs.close();
	             stmt.close();
	             conn.close();
	             out.print("用户名已存在！");
	             out.print("请点击<a href='register.jsp'>重新注册</a>");
		       
		}
			 //若没有存在同样的用户名，则把注册信息录入数据库
			 else{
				  
				  String sql="insert into student (username, sname, sex, xueli, card, address, university, email, password, special, telephone)  values ('"+username+"','"+sname+"','"+sex+"','"+xueli+"','"+card+"','"+address+"','"+university+"','"+email+"','"+password+"','"+special+"','"+telephone+"')";

				  stmt.executeUpdate(sql);
		
			    out.print("<head><title>考生注册——在线考试系统</title></head>");
			    out.print("注册成功！");
			    out.print("<a href='login.jsp'>登录</a>");
			 
				  }	  
			 
			
		        
		 }
		 catch(ClassNotFoundException e){
		 e.printStackTrace();
		 }catch(SQLException e){
			 e.printStackTrace();
		 }
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
			}

}
