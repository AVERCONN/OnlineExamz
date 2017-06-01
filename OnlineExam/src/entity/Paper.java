package entity;

public class Paper {             //数据层，存放各变量
	private String pCategory;             //试卷类别
	private String pNo;                   //试卷编号
	private String pName;                 //试卷名字
	private String pType;                 //题型
	private String pChoShu;               //选择题总数
	private String pChoPoi;               //选择题分值
	private String pMun;                  //题号
	private String pChoQu;                //选择题题目
	private String op1;                   //选择题A选项
	private String op2;                   //选择题B选项
	private String op3;                   //选择题C选项
	private String op4;                   //选择题D选项
	private String pChoAn;                //选择题答案
	private String pFillShu;              //填空题总数
	private String pFillPoi;              //填空题分值
	private String pFillQu;               //填空题题目
	private String pFillAn;               //填空题答案
	public String getpCategory() {                 //以下各变量的get和set方法
		return pCategory;
	}
	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
	}
	public String getpNo() {
		return pNo;
	}
	public void setpNo(String pNo) {
		this.pNo = pNo;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpType() {
		return pType;
	}
	public void setpType(String pType) {
		this.pType = pType;
	}
	public String getpChoShu() {
		return pChoShu;
	}
	public void setpChoShu(String pChoShu) {
		this.pChoShu = pChoShu;
	}
	public String getpChoPoi() {
		return pChoPoi;
	}
	public void setpChoPoi(String pChoPoi) {
		this.pChoPoi = pChoPoi;
	}
	public String getpMun() {
		return pMun;
	}
	public void setpMun(String pMun) {
		this.pMun = pMun;
	}
	public String getpChoQu() {
		return pChoQu;
	}
	public void setpChoQu(String pChoQu) {
		this.pChoQu = pChoQu;
	}
	public String getOp1() {
		return op1;
	}
	public void setOp1(String op1) {
		this.op1 = op1;
	}
	public String getOp2() {
		return op2;
	}
	public void setOp2(String op2) {
		this.op2 = op2;
	}
	public String getOp3() {
		return op3;
	}
	public void setOp3(String op3) {
		this.op3 = op3;
	}
	public String getOp4() {
		return op4;
	}
	public void setOp4(String op4) {
		this.op4 = op4;
	}
	public String getpChoAn() {
		return pChoAn;
	}
	public void setpChoAn(String pChoAn) {
		this.pChoAn = pChoAn;
	}
	public String getpFillShu() {
		return pFillShu;
	}
	public void setpFillShu(String pFillShu) {
		this.pFillShu = pFillShu;
	}
	public String getpFillPoi() {
		return pFillPoi;
	}
	public void setpFillPoi(String pFillPoi) {
		this.pFillPoi = pFillPoi;
	}
	public String getpFillQu() {
		return pFillQu;
	}
	public void setpFillQu(String pFillQu) {
		this.pFillQu = pFillQu;
	}
	public String getpFillAn() {
		return pFillAn;
	}
	public void setpFillAn(String pFillAn) {
		this.pFillAn = pFillAn;
	}
}
