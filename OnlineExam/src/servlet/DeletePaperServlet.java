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
import dao.PaperDao;

/**
 * Servlet implementation class DeletePaperServlet
 */
public class DeletePaperServlet extends HttpServlet {               //删除试卷功能中选择试卷界面
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePaperServlet() {
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
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		PaperDao paperDao=new PaperDao();           //实例化SQL层
		ServletContext ctx=this.getServletContext();          //获取web。xml中的常量
		String server=ctx.getInitParameter("server");
		String db=ctx.getInitParameter("db");
		String user=ctx.getInitParameter("user");
		String pwd=ctx.getInitParameter("pwd");
		String[] paperName=new String[100];
		try {
			paperDao.getConn(server, db, user, pwd);         //获取连接
			for(int i=0;paperDao.BrowsePaperName()[i]!=null;i++) {
				paperName[i]=paperDao.BrowsePaperName()[i];            //遍历试卷名字
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
			paperDao.closeAll();
		}
		out.print("<html>");
		out.print("<head>");
		out.print("<script type='text/javascript' language='javascript'>");
		out.print("function check() {");                 //确认对话框
		out.print("if(window.confirm(\"确定删除选中试卷？\")) {document.form1.submit();}");
		out.print("}");
		out.print("</script>");
		out.print("<title>删除试卷</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("试卷类别筛选：");
		out.print("<form action='PaperSelectIII' method='post'>");
		out.print("<select name='select'>");
		out.print("<option value='all' selected='selected'>全部</option>");
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
		out.print("<form name='form1' action='DeletePaperServletII' method='post'>");
		for(int i=0;paperName[i]!=null;i++) {          //呈现单选框
			if(i==0) {
				out.print("<input type='radio' name='pname' value='"+paperName[i]+"' checked='true'>"+paperName[i]+"<br>");
			}
			else {
				out.print("<input type='radio' name='pname' value='"+paperName[i]+"'>"+paperName[i]+"<br>");
			}

		}
		out.print("<input type='button' value='确定' onclick=\"check()\" />");
		out.print("<input type='button' value='返回' onclick=\"location.href='tkmindex.jsp'\" /><br>");
		out.print("</form>");
		out.print("</body>");
		out.print("</html>");
	}

}
