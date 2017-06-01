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

import bean.StInfo;

public class stinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public stinfoServlet() {
        super();
      
    }

    HttpSession session;	
    private StInfo stInfo=new StInfo();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String driver="com.mysql.jdbc.Driver";  
		String url = "jdbc:mysql://localhost:3307/examinationsystem?user=root&password=123";
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 
		 try{ 
			 String username=request.getParameter("username");	
		     Class.forName(driver); 
			 Connection conn=DriverManager.getConnection(url);
			 Statement stmt = conn.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from student where username='"+username+"'");
			 if(rs.next()){	//如果找到这条记录，则得到这些字段的值放在stInfo的成员变量里
				 stInfo.setUsername(rs.getString(2));
				 stInfo.setName(rs.getString(3));
				 stInfo.setSex(rs.getString(4));
				 stInfo.setXueli(rs.getString(5));
				 stInfo.setCard(rs.getString(6));
				 stInfo.setAddress(rs.getString(7));
				 if(rs.getString(9)==null){//如果用户没有填写就读院校信息
					 stInfo.setUniversity("");
				 }
				 else{ stInfo.setUniversity(rs.getString(9));}	         
			 
			 if(rs.getString(10)==null){//如果用户没有填写邮箱地址
				 stInfo.setEmail("");
			 }
			 else{  
				 stInfo.setEmail(rs.getString(10));}	         
			 if(rs.getString(12)==null){//如果用户没有填写专业信息
				 stInfo.setSpecial("");
			 }
			 else{  
				 stInfo.setSpecial(rs.getString(12));
				 }	 
 
				 stInfo.setTelephone(rs.getString(8));
				 
			 }
			 rs.close();
             stmt.close();
             conn.close();
		 }
		 catch(ClassNotFoundException e){
		 e.printStackTrace();
		 }catch(SQLException e){
			 e.printStackTrace();
		 }
		 //把得到的值保存在session中
		 session = request.getSession();
		 session.setAttribute("stInfo", stInfo);
		 request.getRequestDispatcher("stinfo.jsp").forward(request,response);//跳转到考生个人信息页面
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);	
	}

}
