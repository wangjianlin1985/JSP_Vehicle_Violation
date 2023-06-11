package com.model;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */

public class Car {
    private int id;
    private String carNo="";
    private String carColour="";
    private String name="";
    private String tel="";
    private String sfid="";
    private String bz="";
    private String flag="";
    
    public String getCarNo() {
		return carNo;
	}
	public void setCarNo(String carNo) {
		this.carNo = carNo;
	}
	public String getCarColour() {
		return carColour;
	}
	public void setCarColour(String carColour) {
		this.carColour = carColour;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSfid() {
		return sfid;
	}
	public void setSfid(String sfid) {
		this.sfid = sfid;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public Car() {
    }
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

}