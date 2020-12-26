package com.abc.beans;

public class Course {
	private int cno;
	private String cname;
	private int ctime;
	private int cgrade;

	public Course() {
	}

	public Course(String cname, int ctime, int cgrade) {
		this.cname = cname;
		this.ctime = ctime;
		this.cgrade = cgrade;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getCtime() {
		return ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getCgrade() {
		return cgrade;
	}

	public void setCgrade(int cgrade) {
		this.cgrade = cgrade;
	}

	@Override
	public String toString() {
		return "Course{" +
				"cno=" + cno +
				", cname='" + cname + '\'' +
				", ctime=" + ctime +
				", cgrade=" + cgrade +
				'}';
	}
}
