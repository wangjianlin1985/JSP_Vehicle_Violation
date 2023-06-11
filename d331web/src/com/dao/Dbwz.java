package com.dao;

import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.model.Wz;
import com.core.*;
import com.jspsmart.upload.Request;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @author wgh
 * @version 2.0
 */

public class Dbwz extends Wz {
    private Wz s = new Wz();
    public Dbwz() {
    }

    public Dbwz(String sql) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_WZ + sql,
                                      ResultSet.TYPE_SCROLL_INSENSITIVE,
                                      ResultSet.CONCUR_READ_ONLY);
            rs = ps.executeQuery();
            if (rs.next()) {
                s.setId(rs.getInt("id"));
                s.setName(ParamUtils.getSqlString(rs.getString("name")));
                s.setEdition(ParamUtils.getSqlString(rs.getString("edition")));
                s.setPrice(rs.getFloat("price"));
                s.setUptime(ParamUtils.getSqlString(rs.getString("uptime")));
                s.setUid(ParamUtils.getSqlString(rs.getString("uid")));
                s.setIid(ParamUtils.getSqlString(rs.getString("iid")));
                s.setSid(rs.getInt("sid"));
                s.setEnvironment(ParamUtils.getSqlString(rs.getString("environment")));
                s.setCommend(rs.getInt("commend"));
                s.setLoadnum(rs.getInt("loadnum"));
                s.setRegular(rs.getInt("regular"));
                s.setIntroduce(ParamUtils.getSqlString(rs.getString("introduce")));
                s.setResume(ParamUtils.getSqlString(rs.getString("resume")));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Dbwz(String sql) " +FinalConstants.SELECT_WZ + sql);
            try {
                if (ps != null) {
                    ps.close();
                    ps = null;
                }
            } catch (SQLException e) {
                ps = null;
            }
            try {
                if (con != null) {
                    con.close();
                    con = null;
                }
            } catch (SQLException e) {
                con = null;
            }
        }
    }

    public Dbwz(HttpServletRequest request) {
        s.setName(ParamUtils.getRequestString(request, "name"));
        s.setEdition(ParamUtils.getRequestString(request, "edition"));
        s.setPrice(new Float(ParamUtils.getRequestString(request,"price")).floatValue());
        s.setUptime(ParamUtils.getRequestString(request,"uptime"));
        s.setUid(ParamUtils.getRequestString(request,"uid"));
        s.setIid(ParamUtils.getRequestString(request,"iid"));
        s.setSid(ParamUtils.getIntParameter(request,"sid"));
        s.setEnvironment(ParamUtils.getRequestString(request,"environment"));
        s.setCommend(ParamUtils.getIntParameter(request,"commend"));
        s.setLoadnum(ParamUtils.getIntParameter(request,"loadnum"));
        s.setRegular(ParamUtils.getIntParameter(request,"regular"));
        s.setIntroduce(ParamUtils.getRequestString(request,"introduce"));
        s.setResume(ParamUtils.getRequestString(request,"resume"));
    }

    public boolean Insert() {
        boolean b = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.INSERT_WZ);
            ps.setString(1, s.getName());
            ps.setString(2, s.getEdition());
            ps.setFloat(3, s.getPrice());
            ps.setString(4, s.getUid());
            ps.setString(5, s.getIid());
            ps.setInt(6, s.getSid());
            ps.setString(7, s.getEnvironment());
            ps.setInt(8, s.getCommend());
            ps.setInt(9, s.getLoadnum());
            ps.setInt(10, s.getRegular());
            ps.setString(11, s.getIntroduce());
            ps.setString(12, s.getResume());
            System.out.print("getname:值"+(s.getName()));
            if (ps.executeUpdate() > 0) {
                b = true;
            } else {
                b = false;
            }
        } catch (SQLException e) {
            b = false;
            System.out.println(e.getMessage());
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Dbwz.Insert()");
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {
                ps = null;
            }
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                con = null;
            }
        }
        return b;
    }

    public Collection Select(String sql) {
        Collection coll = new ArrayList();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_WZ + sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Wz link = new Wz();
                link.setId(rs.getInt("id"));
                link.setName(ParamUtils.getSqlString(rs.getString("name")));
                link.setEdition(ParamUtils.getSqlString(rs.getString("edition")));
                link.setPrice(rs.getFloat("price"));
                link.setUptime(ParamUtils.getSqlString(rs.getString("uptime")));
                link.setUid(ParamUtils.getSqlString(rs.getString("uid")));
                link.setIid(ParamUtils.getSqlString(rs.getString("iid")));
                link.setSid(rs.getInt("sid"));
                link.setEnvironment(ParamUtils.getSqlString(rs.getString("environment")));
                link.setCommend(rs.getInt("commend"));
                link.setLoadnum(rs.getInt("loadnum"));
                link.setRegular(rs.getInt("regular"));
                link.setIntroduce(ParamUtils.getSqlString(rs.getString("introduce")));
                link.setResume(ParamUtils.getSqlString(rs.getString("resume")));
                coll.add(link);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " Dbwz.Select(String sql) "+FinalConstants.SELECT_WZ + sql);
            try {
                if (ps != null) {
                    ps.close();
                    ps = null;
                }
            } catch (SQLException e) {
                ps = null;
            }
            try {
                if (con != null) {
                    con.close();
                    con = null;
                }
            } catch (SQLException e) {
                con = null;
            }
        }
        return coll;
    }

    //页数+SQL条件
    public Collection Select(int page, String sql) {
        Collection coll = new ArrayList();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        int tip = FinalConstants.STEP * (page - 1);
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_WZ + sql);
            rs = ps.executeQuery();
            if (tip <= 0) {
                rs.beforeFirst();
            } else {
                if (!rs.absolute(tip)) {
                    rs.beforeFirst();
                }
            }
            for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
                Wz link = new Wz();
                link.setId(rs.getInt("id"));
                link.setName(ParamUtils.getSqlString(rs.getString("name")));
                link.setEdition(ParamUtils.getSqlString(rs.getString("edition")));
                link.setPrice(rs.getFloat("price"));
                link.setUptime(ParamUtils.getSqlString(rs.getString("uptime")));
                link.setUid(ParamUtils.getSqlString(rs.getString("uid")));
                link.setIid(ParamUtils.getSqlString(rs.getString("iid")));
                link.setSid(rs.getInt("sid"));
                link.setEnvironment(ParamUtils.getSqlString(rs.getString("environment")));
                link.setCommend(rs.getInt("commend"));
                link.setLoadnum(rs.getInt("loadnum"));
                link.setRegular(rs.getInt("regular"));
                link.setIntroduce(ParamUtils.getSqlString(rs.getString("introduce")));
                link.setResume(ParamUtils.getSqlString(rs.getString("resume")));
                coll.add(link);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " Dbwz.Select(int page,String sql) ");
            try {
                if (ps != null) {
                    ps.close();
                    ps = null;
                }
            } catch (SQLException e) {
                ps = null;
            }
            try {
                if (con != null) {
                    con.close();
                    con = null;
                }
            } catch (SQLException e) {
                con = null;
            }
        }
        return coll;
    }
    private boolean Update() {
        boolean b = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.UPDATE_WZ);
            ps.setString(1, s.getName());
            ps.setString(2, s.getEdition());
            ps.setFloat(3, s.getPrice());
            ps.setString(4, s.getIid());
            ps.setInt(5, s.getSid());
            ps.setString(6, s.getEnvironment());
            ps.setInt(7, s.getCommend());
            ps.setInt(8, s.getLoadnum());
            ps.setInt(9, s.getRegular());
            ps.setString(10, s.getIntroduce());
            ps.setString(11, s.getResume());
            ps.setInt(12, s.getId());
            if (ps.executeUpdate() > 0) {
                b = true;
            } else {
                b = false;
            }
        } catch (SQLException e) {
            b = false;
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Dbwz.Update() ");
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {
                ps = null;
            }
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                con = null;
            }
        }
        return b;
    }
    private boolean Update_load() {
        boolean b = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.UPDATE_WZ_LOAD);
            ps.setInt(1, s.getLoadnum());
            ps.setInt(2, s.getId());
            if (ps.executeUpdate() > 0) {
                b = true;
            } else {
                b = false;
            }
        } catch (SQLException e) {
            b = false;
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Dbwz.Update() ");
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {
                ps = null;
            }
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                con = null;
            }
        }
        return b;
    }
    @Override
	public int getId() {
        return s.getId();
    }

    @Override
	public void setId(int id) {
        s.setId(id);
    }

    @Override
	public String getName() {
        return s.getName();
    }

    @Override
	public void setName(String name) {
        s.setName(name);
        Update();
    }

    @Override
	public String getEdition() {
        return s.getEdition();
    }

    @Override
	public void setEdition(String edition) {
        s.setEdition(edition);
        Update();
    }

    @Override
	public float getPrice() {
        return s.getPrice();
    }

    @Override
	public void setPrice(float price) {
        s.setPrice(price);
        Update();
    }

    @Override
	public String getUptime() {
        return s.getUptime();
    }

    @Override
	public void setUptime(String uptime) {
        s.setUptime(uptime);
    }

    @Override
	public String getUid() {
        return s.getUid();
    }

    @Override
	public void setUid(String uid) {
        s.setUid(uid);
        Update();
    }

    @Override
	public String getIid() {
        return s.getIid();
    }

    @Override
	public void setIid(String iid) {
        s.setIid(iid);
        Update();
    }

    @Override
	public int getSid() {
        return s.getSid();
    }

    @Override
	public void setSid(int sid) {
        s.setSid(sid);
        Update();
    }

    @Override
	public String getEnvironment() {
        return s.getEnvironment();
    }

    @Override
	public void setEnvironment(String environment) {
        s.setEnvironment(environment);
        Update();
    }

    @Override
	public int getCommend() {
        return s.getCommend();
    }

    @Override
	public void setCommend(int commend) {
        s.setCommend(commend);
        Update();
    }

    @Override
	public int getLoadnum() {
        return s.getLoadnum();
    }

    @Override
	public void setLoadnum(int loadnum) {
        s.setLoadnum(loadnum);
        Update_load();
    }

    @Override
	public int getRegular() {
        return s.getRegular();
    }

    @Override
	public void setRegular(int regular) {
        s.setRegular(regular);
        Update();
    }

    @Override
	public String getIntroduce() {
        return s.getIntroduce();
    }

    @Override
	public void setIntroduce(String introduce) {
        s.setIntroduce(introduce);
        Update();
    }

    @Override
	public String getResume() {
        return s.getResume();
    }

    @Override
	public void setResume(String resume) {
        s.setResume(resume);
        Update();
    }
}
