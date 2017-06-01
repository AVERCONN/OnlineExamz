package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Stgrade;

/**
 * Servlet implementation class ShowGradeServlet
 */
public class ShowGradeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowGradeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    HttpSession session;
    private Stgrade stgrade=new Stgrade();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("userName");
		out.print("<html>");
		out.print("<head>");
		out.print("<style type='text/css'>");
		out.print(".top_nei { width:100%;text-align:center;height:40px;background-color:#1E90FF;line-height:40px;font-size: 18px;font-family: '微软雅黑';color:white;}");
		out.print(".menu {line-height:50px;}");
		out.print("p a:hover {color:#FF6600;}");
		out.print(".STYLE4 {font-size: 18px;font-weight: bold;font-family: '微软雅黑';}");
		out.print("a:link,a:visited {color:#000;text-decoration:none;}");
		out.print("#menu {width: 145px;margin: auto;border: 1px solid #999;left: 64px;position: absolute;font-size: 14px;top: 209px;}");
		out.print("#div1 {display: none;font-size: 12px;position: relative;left: 192px;top: 5px;background-color: White;width: 100px;height: 30px;}");
		out.print("#div2 {display: none;font-size: 16px;position: relative;left: 192px;top: 25px;background-color: White;padding: 5px 10px 0px 10px;width: 100px;}");
		out.print("#div3 {display: none;font-size: 12px;position: relative;left: 192px;top: 60px;background-color: White;padding: 5px 10px 0px 10px;width: 100px;}");
		out.print("#div4 {display: none;font-size: 12px;position: relative;left: 192px;top: 90px;background-color: White;padding: 5px 10px 0px 10px;width: 100px;}");
		out.print(".STYLE5 {color: #000000;font-weight: bold;}");
		out.print(".STYLE7 {font-size: 18px;}");
		out.print("</style>");
		out.print("<script language='javascript' type='text/javascript'>");
		out.print("function showDiv(divName) {document.getElementById(divName).style.display = 'block';}");
		out.print("function hiddenDiv(divName) {document.getElementById(divName).style.display = 'none';}");
		out.print("</script>");
		out.print("<title>查看成绩</title>");
		out.print("</head>");
		
		
		out.print("body {width: 600px;margin: 40px auto;  font-family: 'trebuchet MS', 'Lucida sans', Arial;font-size: 14px;color: #444;}" );
		
		
		
		
		
		
		
		
		out.print("<body>");
		out.print("<p align='right'><a href='personal-3.jsp' class='STYLE4'>首页</a></p>");
		out.print("<div class='top_nei'>");
		out.print("<div align='left'>");
		out.print("当前用户：");
		out.print(username);
		out.print("</div>");
		out.print("</div>");
		out.print("<p>&nbsp;</p>");
		out.print("</head>");
		out.print("<body>");
		String driver="com.mysql.jdbc.Driver";  
		String url = "jdbc:mysql://localhost:3307/examinationsystem?user=root&password=123";
		response.setContentType("text/html;charset=utf-8");
		 session=request.getSession();
		request.setCharacterEncoding("utf-8");
		 try{ 
			  username=(String) session.getAttribute("userName");	
		     Class.forName(driver); 
			 Connection conn=DriverManager.getConnection(url);
			 Statement stmt = conn.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from grade where Id='"+username+"'");
			 while(rs.next()){	//如果找到这条记录，则得到这些字段的值放在stgrade的成员变量里
				 out.print("<table>");
				 out.print("<br>");
				 out.println("考生号:"+rs.getString(1));
				 out.print("<br>");
				 out.println("考生名"+rs.getString(4));
				 out.print("<br>");
				 out.println("试题编号"+rs.getString(2));
				 out.print("<br>");
				 out.println("成绩"+rs.getString(3));
				 out.print("</table>");
				 stgrade.setSno(rs.getString(1));
				 stgrade.setpNo(rs.getString(2));
				 stgrade.setGrade(rs.getString(3));
				 stgrade.setSname(rs.getString(4));
				 out.print("");
				 }	         
			 out.print("</body>");
			 out.print("</html>");
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
		 session.setAttribute("stgrade", stgrade);
//		 request.getRequestDispatcher("stgrade.jsp").forward(request,response);//跳转到考生个人信息页面
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
