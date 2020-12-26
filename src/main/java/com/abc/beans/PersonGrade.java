package com.abc.beans;

public class PersonGrade {

	private int sid;
	private int cid;
	private int cno;
	private String sno;
	private String sname;
	private String sex;
	private String classes;
	private String cname;
	private int mgrade;
	private int zgrade;

	public PersonGrade() {
	}

	public PersonGrade(int sid, int cid, int cno, String sno, String sname, String sex, String classes, String cname, int mgrade, int zgrade) {
		this.sid = sid;
		this.cid = cid;
		this.cno = cno;
		this.sno = sno;
		this.sname = sname;
		this.sex = sex;
		this.classes = classes;
		this.cname = cname;
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

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
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
		return "PersonGrade{" +
				"sid=" + sid +
				", cid=" + cid +
				", cno=" + cno +
				", sno='" + sno + '\'' +
				", sname='" + sname + '\'' +
				", sex='" + sex + '\'' +
				", classes='" + classes + '\'' +
				", cname='" + cname + '\'' +
				", mgrade=" + mgrade +
				", zgrade=" + zgrade +
				'}';
	}
}
