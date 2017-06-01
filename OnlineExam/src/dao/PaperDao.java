package dao;

import java.sql.SQLException;

import entity.Paper;

public class PaperDao extends DBOperPaper{             //SQL层，主要存放各SQL代码
	public String[] BrowsePaperName() {              //获取所有试卷名
		String sql="SELECT paperName FROM paperQuestionNum";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] BrowsePaperName(String pCategory) {              //获取所有试卷名带参数方法
		String sql;
		if(pCategory.equals("all")) {
			sql="SELECT paperName FROM paperQuestionNum";
		}
		else {
			sql="SELECT paperName FROM paperQuestionNum WHERE paperNo LIKE '"+pCategory+"%'";
		}
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getChoiceQuestions(String pname) {         //获取指定试卷所有选择题题目
		String sql="SELECT title FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=0";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getChoiceOp1(String pname) {         //获取指定试卷所有选择题A选项
		String sql="SELECT op1 FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=0";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getChoiceOp2(String pname) {         //获取指定试卷所有选择题B选项
		String sql="SELECT op2 FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=0";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getChoiceOp3(String pname) {         //获取指定试卷所有选择题C选项
		String sql="SELECT op3 FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=0";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getChoiceOp4(String pname) {         //获取指定试卷所有选择题D选项
		String sql="SELECT op4 FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=0";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getChoiceAnswers(String pname) {         //获取指定试卷所有选择题答案
		String sql="SELECT answer FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=0";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getFillQuestions(String pname) {         //获取指定试卷所有填空题题目
		String sql="SELECT title FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=1";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String[] getFillAnswers(String pname) {         //获取指定试卷所有填空题答案
		String sql="SELECT answer FROM paperQuestionNum,paperAnswer WHERE paperQuestionNum.paperNo=paperAnswer.paperNo AND paperName='"+pname+"' AND type=1";
		String[] result=new String[100];
		int i=0;
		try {
			rs=this.getResultSet(sql);
			while(rs.next()) {
				result[i]=rs.getString(1);
				i++;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串数组
	}
	
	public String getPaperNo(String pname) {            //获取试卷名称对应的试卷编号
		String sql="SELECT paperNo FROM paperQuestionNum WHERE paperName='"+pname+"'";
		String result=null;
		try {
			rs=this.getResultSet(sql);
			rs.next();
			result=rs.getString(1);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串
	}
	
	public String getChoPoi(String pname) {            //获取试卷名称对应的选择题分值
		String sql="SELECT choicePoint FROM paperQuestionNum WHERE paperName='"+pname+"'";
		String result=null;
		try {
			rs=this.getResultSet(sql);
			rs.next();
			result=rs.getString(1);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串
	}
	
	public String getFillPoi(String pname) {            //获取试卷名称对应的填空题分值
		String sql="SELECT fillPoint FROM paperQuestionNum WHERE paperName='"+pname+"'";
		String result=null;
		try {
			rs=this.getResultSet(sql);
			rs.next();
			result=rs.getString(1);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;             //返回一个字符串
	}
	
	public int addQuShu(Paper paper) {         //向数据库写入试题属性
		String sql="INSERT INTO paperQuestionNum (paperNo,paperName,choiceNum,choicePoint,fillNum,fillPoint) values(?,?,?,?,?,?)";
		String paperNo=paper.getpCategory()+paper.getpNo();
		String[] params=new String[] {paperNo,paper.getpName(),paper.getpChoShu(),paper.getpChoPoi(),paper.getpFillShu(),paper.getpFillPoi()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public int addQuShu(Paper paper,String paperNo) {         //向数据库指定试卷写入试题属性
		String sql="INSERT INTO paperQuestionNum (paperNo,paperName,choiceNum,choicePoint,fillNum,fillPoint) values(?,?,?,?,?,?)";
		String[] params=new String[] {paperNo,paper.getpName(),paper.getpChoShu(),paper.getpChoPoi(),paper.getpFillShu(),paper.getpFillPoi()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public int addChoiceQu(Paper paper) {         //向数据库写入选择题
		String sql="INSERT INTO paperAnswer (paperNo,num,type,title,op1,op2,op3,op4,answer) values(?,?,?,?,?,?,?,?,?)";
		String paperNo=paper.getpCategory()+paper.getpNo();
		String[] params=new String[] {paperNo,paper.getpMun(),"0",paper.getpChoQu(),paper.getOp1(),paper.getOp2(),paper.getOp3(),paper.getOp4(),paper.getpChoAn()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public int addChoiceQu(Paper paper,String paperNo) {         //向数据库指定试卷写入选择题
		String sql="INSERT INTO paperAnswer (paperNo,num,type,title,op1,op2,op3,op4,answer) values(?,?,?,?,?,?,?,?,?)";
		String[] params=new String[] {paperNo,paper.getpMun(),"0",paper.getpChoQu(),paper.getOp1(),paper.getOp2(),paper.getOp3(),paper.getOp4(),paper.getpChoAn()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public int addFillQu(Paper paper) {         //向数据库写入填空题
		String sql="INSERT INTO paperAnswer (paperNo,num,type,title,answer) values(?,?,?,?,?)";
		String paperNo=paper.getpCategory()+paper.getpNo();
		String[] params=new String[] {paperNo,paper.getpMun(),"1",paper.getpFillQu(),paper.getpFillAn()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public int addFillQu(Paper paper,String paperNo) {         //向数据库指定试卷写入填空题
		String sql="INSERT INTO paperAnswer (paperNo,num,type,title,answer) values(?,?,?,?,?)";
		String[] params=new String[] {paperNo,paper.getpMun(),"1",paper.getpFillQu(),paper.getpFillAn()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public int updateChoiceQu(Paper paper,String pno,int pmun) {         //向数据库更新选择题
		String sql="UPDATE paperAnswer SET title=?,op1=?,op2=?,op3=?,op4=?,answer=? WHERE paperNo='"+pno+"' AND num="+pmun+"";
		String[] params=new String[] {paper.getpChoQu(),paper.getOp1(),paper.getOp2(),paper.getOp3(),paper.getOp4(),paper.getpChoAn()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public int updateFillQu(Paper paper,String pno,int pmun) {         //向数据库更新填空题
		String sql="UPDATE paperAnswer SET title=?,answer=? WHERE paperNo='"+pno+"' AND num="+pmun+"";
		String[] params=new String[] {paper.getpFillQu(),paper.getpFillAn()};
		int result=this.executeUpdate(sql, params);
		return result;             //返回数据库更新行数
	}
	
	public boolean deletePaper(String pno) {              //删除数据库中指定试卷全部数据项
		String sql="DELETE FROM paperAnswer WHERE paperNo='"+pno+"'";
		String sql2="DELETE FROM paperQuestionNum WHERE paperNo='"+pno+"'";
		int result=this.executeUpdate(0,sql);
		int result2=this.executeUpdate(1,sql2);
		if(result>0&&result2>0) {
			return true;              //如果两个查询都执行成功，返回true
		}
		else {
			return false;             //否则，返回false
		}
	}
	
}
