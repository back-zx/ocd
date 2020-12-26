package com.abc.beans;

public class Classes {
	private int cid;
	private String classes;

	public Classes() {
	}

	public Classes(String classes) {
		this.classes = classes;
	}

	public Classes(int cid, String classes) {
		this.cid = cid;
		this.classes = classes;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	@Override
	public String toString() {
		return "Classes{" +
				"cid=" + cid +
				", classes='" + classes + '\'' +
				'}';
	}
}
