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
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String Name ;
	private String userName;
	private int ban=0;
    public LoginServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String driver="com.mysql.jdbc.Driver";  
		String url = "jdbc:mysql://localhost:3307/examinationsystem?user=root&password=123";
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 PrintWriter out=response.getWriter();
		 try{ 
			 String username=request.getParameter("username");			 	
			 String password=request.getParameter("password");
			 String sf=request.getParameter("yhsf");
			 Class.forName(driver); 
			 Connection conn=DriverManager.getConnection(url);
			 Connection conn2=DriverManager.getConnection(url);
			 Statement stmt = conn.createStatement();
			 Statement stmt2=conn2.createStatement();
			 //如果用户选择“题库管理员”身份
			 if(sf.equals("tikumanag")){
				 String msql="select * from tikumanager where username='"+username+"' and password='"+password+"'";
				ResultSet mrs = stmt.executeQuery(msql); 
				if(mrs.next()){//存在匹配的记录
					Name = mrs.getString(3);					
					session.setAttribute("Name", Name);//把第三个字段的值保存在session中
					
					          mrs.close();
				             stmt.close();
				             conn.close();
					         request.getRequestDispatcher("personal-4.jsp").forward(request,response);//跳转到题库管理员页面
					}else{
						  out.print("未注册或账号、密码错误！");
						 out.print("<a href='login.jsp'>返回</a>");		
						  }	 
			 }
			 //如果用户选择“监考员”身份
			 else if(sf.equals("jiankao")){
				 	String tsql="select * from jiankao where username='"+username+"' and password='"+password+"'";
				
				ResultSet trs = stmt.executeQuery(tsql); 
				if(trs.next()){//存在匹配的记录
					Name = trs.getString(3);
					session.setAttribute("Name", Name);//把第三个字段的值保存在session中
					          trs.close();
				             stmt.close();
				             conn.close();
					         request.getRequestDispatcher("personal-1.jsp").forward(request,response);//跳转到监考员页面
					}
				 else{
					  
					 
					  out.print("未注册或账号、密码错误！");
					  out.print("<a href='login.jsp'>注册</a>");		
					  }	 
				 }
			//如果用户选择“考生”身份
			 else if(sf.equals("st")){
				 
				 ResultSet rs2=stmt2.executeQuery("select * from blacklist where Id ='"+username+"'");
				 if(rs2.next()){
					 rs2.close();
		             stmt2.close();
		             conn2.close();
		             stmt.close();
		             conn.close();
					 request.getRequestDispatcher("indexb.jsp").forward(request,response);	 
				 }
				 ResultSet rs = stmt.executeQuery("select * from student where username='"+username+"' and password='"+password+"'");
				 if(rs.next()){
						
						Name = rs.getString(3);
						userName = rs.getString(2);
						
						session.setAttribute("Name", Name);
						session.setAttribute("userName", userName);
						           rs.close();
					             stmt.close();
					             conn.close();
						         request.getRequestDispatcher("personal-3.jsp").forward(request,response);//跳转到考生页面
						}			
			  else{
				 
				  out.print("未注册或账号、密码错误！");
				  out.print("<a href='login.jsp'>注册</a>");		
				  }	 
			 }		
			//如果用户选择“考生管理员”身份
			 else if(sf.equals("stmanag")){
				String ksql="select * from kaoshengmanager where username='"+username+"' and password='"+password+"'";
				ResultSet krs = stmt.executeQuery(ksql); 
				if(krs.next()){
					Name = krs.getString(3);
					session.setAttribute("Name", Name);
							          krs.close();
						             stmt.close();
						             conn.close();
							         request.getRequestDispatcher("personal-2.jsp").forward(request,response);//跳转到考生管理员页面
							}else{
								  
								  out.print("未注册或账号、密码错误！");
								  out.print("<a href='login.jsp'>注册</a>");		
								  }	 
		 }
			  
					 
					 
		 }
		 
		 catch(ClassNotFoundException e){
		 e.printStackTrace();
		 }catch(SQLException e){
			 e.printStackTrace();
		 }
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
	}
}
