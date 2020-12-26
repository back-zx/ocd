package com.abc.beans;

public class ClassGrade {
	private int cid;
	private String classes;
	private int p_zgrade;
	private int p_pgrade;
	private int m_zgrade;
	private int m_pgrade;
	private int z_zgrade;
	private int z_pgrade;

	public ClassGrade() {
	}

	public ClassGrade(int cid, String classes, int p_zgrade, int p_pgrade, int m_zgrade, int m_pgrade, int z_zgrade, int z_pgrade) {
		this.cid = cid;
		this.classes = classes;
		this.p_zgrade = p_zgrade;
		this.p_pgrade = p_pgrade;
		this.m_zgrade = m_zgrade;
		this.m_pgrade = m_pgrade;
		this.z_zgrade = z_zgrade;
		this.z_pgrade = z_pgrade;
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

	public int getP_zgrade() {
		return p_zgrade;
	}

	public void setP_zgrade(int p_zgrade) {
		this.p_zgrade = p_zgrade;
	}

	public int getP_pgrade() {
		return p_pgrade;
	}

	public void setP_pgrade(int p_pgrade) {
		this.p_pgrade = p_pgrade;
	}

	public int getM_zgrade() {
		return m_zgrade;
	}

	public void setM_zgrade(int m_zgrade) {
		this.m_zgrade = m_zgrade;
	}

	public int getM_pgrade() {
		return m_pgrade;
	}

	public void setM_pgrade(int m_pgrade) {
		this.m_pgrade = m_pgrade;
	}

	public int getZ_zgrade() {
		return z_zgrade;
	}

	public void setZ_zgrade(int z_zgrade) {
		this.z_zgrade = z_zgrade;
	}

	public int getZ_pgrade() {
		return z_pgrade;
	}

	public void setZ_pgrade(int z_pgrade) {
		this.z_pgrade = z_pgrade;
	}

	@Override
	public String toString() {
		return "ClassGrade{" +
				"cid=" + cid +
				", classes='" + classes + '\'' +
				", p_zgrade=" + p_zgrade +
				", p_pgrade=" + p_pgrade +
				", m_zgrade=" + m_zgrade +
				", m_pgrade=" + m_pgrade +
				", z_zgrade=" + z_zgrade +
				", z_pgrade=" + z_pgrade +
				'}';
	}
}
