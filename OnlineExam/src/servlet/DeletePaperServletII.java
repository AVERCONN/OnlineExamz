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
 * Servlet implementation class DeletePaperServletII
 */
public class DeletePaperServletII extends HttpServlet {               //删除试卷功能中提交更改界面
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePaperServletII() {
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
		PaperDao paperDao=new PaperDao();           //实例化SQL层
		ServletContext ctx=this.getServletContext();          //获取web。xml中的常量
		String server=ctx.getInitParameter("server");
		String db=ctx.getInitParameter("db");
		String user=ctx.getInitParameter("user");
		String pwd=ctx.getInitParameter("pwd");
		String pName=new String(request.getParameter("pname"));       //获取试卷名字
		String pNo=null;
		try {
			paperDao.getConn(server, db, user, pwd);         //获取连接
			pNo=paperDao.getPaperNo(pName);           //获取试卷编号
			if(paperDao.deletePaper(pNo)) {           //删除数据库中指定试卷全部数据项
				out.print("删除试卷成功<br>");
			}
			else {
				out.print("删除试卷失败<br>");
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
			paperDao.closeAll();                 //关闭全部数据集和连接
		}
		out.print("<input type='button' value='命题菜单' onclick=\"location.href='tkmindex.jsp'\" /><br>");
	}

}
