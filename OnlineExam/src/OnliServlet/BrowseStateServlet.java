package OnliServlet;

import java.sql.Statement;
import java.sql.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.CaInfo;

public class BrowseStateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BrowseStateServlet() {
        super();
      
    }

    HttpSession session;	
    private CaInfo caInfo=new CaInfo();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String driver="com.mysql.jdbc.Driver";  
		String url = "jdbc:mysql://localhost:3307/examinationsystem?user=root&password=123";
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 try{ 
//			 String username=request.getParameter("no");	
			 HttpSession session=request.getSession();
			 String username=(String) session.getAttribute("userName");
		     Class.forName(driver); 
			 Connection conn=DriverManager.getConnection(url);
			 Statement stmt = conn.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from grade where Id='"+username+"'");
			 
			if(rs.next()){	
				 caInfo.setUsername(rs.getString(1));
				 caInfo.setName(rs.getString(4));
				 caInfo.setPno(rs.getString(2));
				 caInfo.setGrade(rs.getString(3));
	
			 rs.close();
             stmt.close();
             conn.close(); 
		 }}catch(ClassNotFoundException e){
			 e.printStackTrace();
			 }catch(SQLException e){
				 e.printStackTrace();
			 }
		//把得到的值保存在session中
		 session = request.getSession();
		 session.setAttribute("caInfo", caInfo);
		 request.getRequestDispatcher("BrowseState2.jsp").forward(request,response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);	
	}

}
