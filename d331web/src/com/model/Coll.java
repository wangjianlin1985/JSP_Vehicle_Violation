package com.model;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */

public class Coll {
    private int id;
    private String uid;
    private String uname;
    private String ttable;
    private String tid;
    private String tidF;
    private String tname;
    private String ctime;
    public Coll() {
    }
    
	public String getTidF() {
		return tidF;
	}

	public void setTidF(String tidF) {
		this.tidF = tidF;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getTtable() {
		return ttable;
	}
	public void setTtable(String ttable) {
		this.ttable = ttable;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
    
    

}