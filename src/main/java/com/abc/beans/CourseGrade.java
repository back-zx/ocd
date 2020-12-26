package com.abc.beans;

public class CourseGrade {
	
	private int sid;
	private int cno;
	private String sno;
	private String sname;
	private String cname;
	private int pgrade;
	private int mgrade;
	private int zgrade;

	public CourseGrade() {
	}

	public CourseGrade(int cno, String sno, String sname, String cname, int pgrade, int mgrade, int zgrade) {
		this.cno = cno;
		this.sno = sno;
		this.sname = sname;
		this.cname = cname;
		this.pgrade = pgrade;
		this.mgrade = mgrade;
		this.zgrade = zgrade;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getPgrade() {
		return pgrade;
	}

	public void setPgrade(int pgrade) {
		this.pgrade = pgrade;
	}

	public int getMgrade() {
		return mgrade;
	}

	public void setMgrade(int mgrade) {
		this.mgrade = mgrade;
	}

	public int getZgrade() {
		return zgrade;
	}

	public void setZgrade(int zgrade) {
		this.zgrade = zgrade;
	}

	@Override
	public String toString() {
		return "CourseGrade{" +
				"sid=" + sid +
				", cno=" + cno +
				", sno='" + sno + '\'' +
				", sname='" + sname + '\'' +
				", cname='" + cname + '\'' +
				", pgrade=" + pgrade +
				", mgrade=" + mgrade +
				", zgrade=" + zgrade +
				'}';
	}
}
