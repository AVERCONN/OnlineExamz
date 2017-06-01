package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




/**
 * Servlet implementation class DoExamResultServlet
 */
public class DoExamResultServlet extends HttpServlet {
	 private static final long serialVersionUID = 1L;
     private String driverName="com.mysql.jdbc.Driver";                    //定义私有字符串常量并初始化
     private String userName="root";                    //定义的数据库用户名
     private String userPasswd="123";                    //定义的数据库连接密码
     private String tableName="paperanswer";	
     private PreparedStatement ps =null;	
     private PreparedStatement ips=null;	
     private String dbName="examinationsystem";       //定义的数据库名
     private String url="jdbc:mysql://localhost:3307/"+dbName+"?user="+userName+"&password="+userPasswd;
     private ResultSet rs=null;
     private ResultSet irs=null;
     private int opcount=0;			//生成选择题控件名编号
     private int fillcount=0;		//生成填空题控件名编号
     private String type;
	 private String userAnswer; 
	 private String answer;
	 private String title;
	 private String sNo="1";
	 private String name=null;
	 private String pNo;
	 private String num;
	 private int score=0;
	 private String createDb="create table if not exists"
	 		+ " candidate(Id VARCHAR(255) not null,"
	 		+ "paperNo VARCHAR(255)not null,"
	 		+ "num VARCHAR(255) null,"
	 		+ "userAnswer VARCHAR(255) null)";
	 private String searchDb="SELECT * FROM "+tableName+" where paperNo='computer0003'";
	 private String insertDb="insert into candidate(Id,paperNo,num,userAnswer) "
	 		+ "values('"+sNo+"','"+pNo+"','"+num+"','"+userAnswer+"')";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoExamResultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		sNo=(String) session.getAttribute("userName");
		name=(String ) session.getAttribute("Name");
		pNo=new String(request.getParameter("paperNo").getBytes("iso-8859-1"), "utf-8");
		 String searchDb_Op="SELECT * FROM "+tableName+" where paperNo='"+pNo+"'"
			 		+ " and type=0";
		 String searchDb_Fill="SELECT * FROM "+tableName+" where paperNo='"+pNo+"'"
			 		+ " and type=1";
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		
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
		out.print("<title>考试成绩</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<p align='right'><a href='personal-3.jsp' class='STYLE4'>首页</a></p>");
		out.print("<div class='top_nei'>");
		out.print("<div align='left'>");
		out.print("当前用户：");
		out.print(name);
		out.print("</div>");
		out.print("</div>");
		out.print("<p>&nbsp;</p>");
		
		out.print("<body>");
         try{
        	 Class.forName("com.mysql.jdbc.Driver").newInstance();
             Connection connection=DriverManager.getConnection(url);
//             ps=(PreparedStatement) connection.prepareStatement("select * from "+tableName+" where id =? and password=?");
//             ps.setObject(1, userName);
//             ps.setObject(2, userPasswd);
             ps=(PreparedStatement) connection.prepareStatement(searchDb_Op);
             ips=(PreparedStatement) connection.prepareStatement(searchDb_Fill);
             Statement statement = connection.createStatement();
             statement.execute(createDb);
             rs= ps.executeQuery(); 
             
//        	 	Class.forName("com.mysql.jdbc.Driver");
//               connection=DriverManager.getConnection(url,userName,userPasswd);
//               statement=connection.createStatement();
//               String sql="select * from "+tableName +" where paperNo='computer0003'";
//               rs=statement.executeQuery(sql);
                 //遍历选择题，验证答案
                  while(rs.next()){
                   try{
                   opcount++;
                   userAnswer=new String(request.getParameter("O"+opcount).getBytes("iso-8859-1"), "utf-8");
                   }
                   catch(Exception e){
                	   if(userAnswer==null){ 
                    	   userAnswer=""; 
                    	   }
                   }
                   num=rs.getString(2);
                   answer=rs.getString(9);
                   title=rs.getString(4);
                   out.println(num+". "+title);
                   out.println("<br>");
                   out.println("考生答案:");
                   out.println(userAnswer);
                   out.println("<br>");
                   out.println("<span style='color: red'>");
                   out.println("正确答案:"+answer);
                   out.println("</span>");
                   out.println("<br>");
                   out.println("<br>");	
                   statement.executeUpdate("insert into candidate(Id,paperNo,num,userAnswer) "
               	 		+ "values('"+sNo+"','"+pNo+"','"+num+"','"+userAnswer+"')");
                   if(userAnswer.equals(answer))								
                	   score=score+3;
                   userAnswer=""; 
                  }
                  out.println("<br>");
                  ips=(PreparedStatement) connection.prepareStatement(searchDb_Fill);
                  Statement istatement = connection.createStatement();
                  istatement.execute(createDb);
                  rs=ps.executeQuery();
                  irs=ips.executeQuery(); 
                  //遍历填空题，验证答案
                  while(irs.next()){
                	  
                      try{
                      fillcount++;
                      userAnswer=new String(request.getParameter("F"+fillcount).getBytes("iso-8859-1"), "utf-8");
                      }
                      catch(Exception e){
                   	   if(userAnswer==null){ 
                       	   userAnswer=""; 
                       	   }
                      }
//                      if(type.equals("0")) continue;
//                      statement.executeUpdate(insertDb);
                      num=irs.getString(2);
                      answer=irs.getString(9);
                      title=irs.getString(4);
                      out.println(num+". "+title);
                      out.println("<br>");
                      out.println("考生答案:");
                      out.println(userAnswer);
                      out.println("<br>");
                      out.println("<span style='color: red'>");
                      out.println("正确答案:"+answer);
                      out.println("</span>");
                      out.println("<br>");
                      out.println("<br>");
                      statement.executeUpdate("insert into candidate(Id,paperNo,num,userAnswer) "
                     	 		+ "values('"+sNo+"','"+pNo+"','"+num+"','"+userAnswer+"')");
                      if(userAnswer.equals(answer))								
                   	   score=score+2;		
                      userAnswer=""; 
                     }		
                 statement.executeUpdate("insert into grade(Id,pno,grade,name)"+"values('"+sNo+"','"+pNo+"','"+score+"','"+name+"')");
                  out.println("你的总分是:"+score);
                  out.println("</table>");
                  rs.close();
                  irs.close();
                  statement.close();			
                  connection.close();  
             }catch(Exception e){
             e.printStackTrace();
             out.println(e.toString());    
             }
        out.print("<form action='personal-3.jsp' method='post' name='form'>"); 
        out.print("<br><INPUT TYPE='submit' value='继续' name='submit'><br>");
        out.print("</form>");
		out.print("</body>");
		out.print("</html>");
		session.setAttribute("score", score+"");
		session.setAttribute("paperNo",pNo);
		//request.getRequestDispatcher("examresult.jsp").forward(request,response);
	}
}
