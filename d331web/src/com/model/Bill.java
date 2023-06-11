package com.model;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */

public class Bill {

    private int id;
	private String billNO;
    private String bxname;
    private String cbrname;
    private String tbrname;
    private String date;
    private String qx;
    private String br;
    private String usr;
    public Bill() {
    }
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBillNO() {
		return billNO;
	}
	public void setBillNO(String billNO) {
		this.billNO = billNO;
	}
	public String getBxname() {
		return bxname;
	}
	public void setBxname(String bxname) {
		this.bxname = bxname;
	}
	public String getCbrname() {
		return cbrname;
	}
	public void setCbrname(String cbrname) {
		this.cbrname = cbrname;
	}
	public String getTbrname() {
		return tbrname;
	}
	public void setTbrname(String tbrname) {
		this.tbrname = tbrname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getQx() {
		return qx;
	}
	public void setQx(String qx) {
		this.qx = qx;
	}
	public String getBr() {
		return br;
	}
	public void setBr(String br) {
		this.br = br;
	}
	public String getUsr() {
		return usr;
	}
	public void setUsr(String usr) {
		this.usr = usr;
	}
	
  
}