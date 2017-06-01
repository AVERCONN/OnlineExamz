package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PaperDao;
import entity.Paper;

/**
 * Servlet implementation class NewPaperServlet
 */
public class NewPaperServlet extends HttpServlet {          //新建试卷功能中输入试题属性界面
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewPaperServlet() {
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
		int j=0;
		String pCategory=new String(request.getParameter("pcategory"));     //获取试卷类别
		String pNo=new String(request.getParameter("pno"));                 //获取试卷编号
		String pName=new String(request.getParameter("pname"));             //获取试卷名称
		String pChoShu=new String(request.getParameter("pcshu"));           //获取选择题个数
		String pChoPoi=new String(request.getParameter("pcpoint"));         //获取选择题分值
		String pFillShu=new String(request.getParameter("pfshu"));          //获取填空题个数
		String pFillPoi=new String(request.getParameter("pfpoint"));        //获取填空题分值
		Paper paper=new Paper();           //实例化数据层
		paper.setpCategory(pCategory);           //设置各数值
		paper.setpNo(pNo);
		paper.setpName(pName);
		paper.setpChoShu(pChoShu);
		paper.setpChoPoi(pChoPoi);
		paper.setpFillShu(pFillShu);
		paper.setpFillPoi(pFillPoi);
		ServletContext ctx=this.getServletContext();          //获取web。xml中的常量
		String server=ctx.getInitParameter("server");
		String db=ctx.getInitParameter("db");
		String user=ctx.getInitParameter("user");
		String pwd=ctx.getInitParameter("pwd");
		PaperDao paperDao=new PaperDao();           //实例化SQL层
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("Name");
		try {
			paperDao.getConn(server, db, user, pwd);
			paperDao.addQuShu(paper);            //向数据库写入试题属性
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			paperDao.closeAll();                 //关闭全部数据集和连接
		}
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
		out.print("<script type='text/javascript' language='javascript'>");
		out.print("function check() {");            //检查函数，用于检测各项是否非空
		out.print("if(false) {}");
		for(int i=0;i<Integer.parseInt(pChoShu);i++) {
			out.print("else if(document.form1.pcq"+i+".value==\"\") {alert(\"请输入选择题题目！\");}");
			out.print("else if(document.form1.op1"+i+".value==\"\") {alert(\"请输入A选项！\");}");
			out.print("else if(document.form1.op2"+i+".value==\"\") {alert(\"请输入B选项！\");}");
			out.print("else if(document.form1.op3"+i+".value==\"\") {alert(\"请输入C选项！\");}");
			out.print("else if(document.form1.op4"+i+".value==\"\") {alert(\"请输入D选项！\");}");
			out.print("else if(document.form1.pca"+i+".value==\"\") {alert(\"请输入选择题答案！\");}");
		}
		for(int i=0;i<Integer.parseInt(pFillShu);i++) {
			out.print("else if(document.form1.pfq"+i+".value==\"\") {alert(\"请输入填空题题目！\");}");
			out.print("else if(document.form1.pfa"+i+".value==\"\") {alert(\"请输入填空题答案！\");}");
		}
		out.print("else {document.form1.submit();}");
		out.print("}");
		out.print("</script>");
		out.print("<title>新建试卷</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<form name='form1' action='NewPaperServletII' method='post'>");
		out.print("<input type='hidden' name='pcategory' value='"+pCategory+"' />");       //隐藏变量
		out.print("<input type='hidden' name='pno' value='"+pNo+"' />");
		out.print("<input type='hidden' name='pname' value='"+pName+"' />");
		out.print("<input type='hidden' name='pcshu' value='"+pChoShu+"' />");
		out.print("<input type='hidden' name='pfshu' value='"+pFillShu+"' />");
		out.print(pName+"<br>");
		out.print("一、选择题<br>");
		for(int i=0;i<Integer.parseInt(pChoShu);i++) {
			out.print((i+1)+"、题目：<input type='text' name='pcq"+i+"' /><br>");
			out.print("A、<input type='text' name='op1"+i+"' /><br>");
			out.print("B、<input type='text' name='op2"+i+"' /><br>");
			out.print("C、<input type='text' name='op3"+i+"' /><br>");
			out.print("D、<input type='text' name='op4"+i+"' /><br>");
			out.print("答案：<input type='text' name='pca"+i+"' /><br><br>");
			j++;
		}
		out.print("二、填空题<br>");
		for(int i=0;i<Integer.parseInt(pFillShu);i++) {
			j++;
			out.print(j+"、题目：<input type='text' name='pfq"+i+"' /><br>");
			out.print("答案：<input type='text' name='pfa"+i+"' /><br><br>");
		}
		out.print("<input type='button' value='确定' onclick=\"check()\" />");
		out.print("<input type='reset' value='重置' />");
		out.print("<input type='button' value='命题人菜单' onclick=\"location.href='tkmindex.jsp'\" />");
		out.print("</form>");
		out.print("</body>");
		out.print("</html>");
	}

}
