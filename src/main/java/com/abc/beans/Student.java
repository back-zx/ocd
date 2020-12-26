package com.abc.beans;

public class Student {
	private int sid;
	private String sno;
	private String sname;
	private String sex;
	private String school;
	private String classes;
	private String phone;

	public Student() {
	}

	public Student(String sno, String sname, String sex, String school, String classes, String phone) {
		this.sno = sno;
		this.sname = sname;
		this.sex = sex;
		this.school = school;
		this.classes = classes;
		this.phone = phone;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
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

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Student{" +
				"sid=" + sid +
				", sno='" + sno + '\'' +
				", sname='" + sname + '\'' +
				", sex='" + sex + '\'' +
				", school='" + school + '\'' +
				", classes='" + classes + '\'' +
				", phone='" + phone + '\'' +
				'}';
	}
}
