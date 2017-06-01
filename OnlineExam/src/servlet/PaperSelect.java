package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PaperDao;

/**
 * Servlet implementation class PaperSelect
 */
public class PaperSelect extends HttpServlet {               //查看试卷功能中的试卷筛选功能
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaperSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String pCategory=new String(request.getParameter("select"));     //获取试卷类别
		PaperDao paperDao=new PaperDao();           //实例化SQL层
		ServletContext ctx=this.getServletContext();          //获取web。xml中的常量
		String server=ctx.getInitParameter("server");
		String db=ctx.getInitParameter("db");
		String user=ctx.getInitParameter("user");
		String pwd=ctx.getInitParameter("pwd");
		String[] paperName=new String[100];
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("Name");
		try {
			paperDao.getConn(server, db, user, pwd);         //获取连接
			for(int i=0;paperDao.BrowsePaperName(pCategory)[i]!=null;i++) {
				paperName[i]=paperDao.BrowsePaperName(pCategory)[i];            //遍历试卷名字
			}
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		} 
		catch (InstantiationException e) {
			e.printStackTrace();
		} 
		catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		finally {
			paperDao.closeAll();                  //关闭全部数据集和连接
		}
		out.print("<html>");
		out.print("<head><title>查看试卷</title>");
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
		out.print("<title>查看试卷</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<p align='right'><a href='personal-4.jsp' class='STYLE4'>首页</a></p>");
		out.print("<div class='top_nei'>");
		out.print("<div align='left'>");
		out.print("当前用户：");
		out.print(name);
		out.print("</div>");
		out.print("</div>");
		out.print("<p>&nbsp;</p>");
		out.print("</head>");
		out.print("<body>");
		out.print("试卷类别筛选：");
		out.print("<form action='PaperSelect' method='post'>");
		out.print("<select name='select'>");
		out.print("<option value='all'>全部</option>");
		out.print("<option value='computer'>计算机类</option>");
		out.print("<option value='construction'>工程类</option>");
		out.print("<option value='medicine'>医学类</option>");
		out.print("<option value='degree'>学历类</option>");
		out.print("<option value='language'>外语类</option>");
		out.print("<option value='finance'>财经类</option>");
		out.print("<option value='foreigntrade'>外贸类</option>");
		out.print("<option value='civilservant'>公务员类</option>");
		out.print("<option value='qualification'>资格类</option>");
		out.print("<option value='law'>法律类</option>");
		out.print("</select> ");
		out.print("<input type='submit' value='确定' /><br>");
		out.print("</form>");
		out.print("请选择需要查看的试卷：<br>");
		out.print("<form action='BrowsePaperServletII' method='post'>");
		for(int i=0;paperName[i]!=null;i++) {          //呈现单选框
			if(i==0) {
				out.print("<input type='radio' name='pname' value='"+paperName[i]+"' checked='true'>"+paperName[i]+"<br>");
			}
			else {
				out.print("<input type='radio' name='pname' value='"+paperName[i]+"'>"+paperName[i]+"<br>");
			}

		}
		out.print("<input type='submit' value='确定' /><br>");
		out.print("<input type='button' value='返回' onclick=\"location.href='tkmindex.jsp'\" /><br>");
		out.print("</form>");
		out.print("</body>");
		out.print("</html>");
	}

}
