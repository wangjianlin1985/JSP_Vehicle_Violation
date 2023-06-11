package com.dao;

import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import com.core.Database;
import com.core.FinalConstants;
import com.core.ParamUtils;
import com.model.Car;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @version 1.0
 */

public class Dbcar extends Car {
    private Car s=new Car();
    public Dbcar() {
    }
    public Dbcar(String sql) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_CAR + sql,
                                      ResultSet.TYPE_SCROLL_INSENSITIVE,
                                      ResultSet.CONCUR_READ_ONLY);
            rs = ps.executeQuery();
            if (rs.next()) {
                s.setId(rs.getInt("id"));
                s.setCarNo(ParamUtils.getSqlString(rs.getString("carNo")));
                s.setCarColour(ParamUtils.getSqlString(rs.getString("carColour")));
                s.setName(ParamUtils.getSqlString(rs.getString("name")));
                s.setTel(ParamUtils.getSqlString(rs.getString("tel")));
                s.setSfid(ParamUtils.getSqlString(rs.getString("sfid")));
                s.setBz(ParamUtils.getSqlString(rs.getString("bz")));
                s.setFlag(ParamUtils.getSqlString(rs.getString("flag")));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Dbcar(String sql) " + s.getId());
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

    public Dbcar(HttpServletRequest request) {
        s.setCarNo(ParamUtils.getRequestString(request,"carNo"));
        s.setCarColour(ParamUtils.getRequestString(request,"carColour"));
        s.setName(ParamUtils.getRequestString(request,"name"));
        s.setTel(ParamUtils.getRequestString(request,"tel"));
        s.setSfid(ParamUtils.getRequestString(request,"sfid"));
        s.setBz(ParamUtils.getRequestString(request,"bz"));
        s.setFlag(ParamUtils.getRequestString(request,"flag"));
    }
    public boolean Insert() {
        boolean b = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.INSERT_CAR);
            ps.setString(1, s.getCarNo());
            ps.setString(2, s.getCarColour());
            ps.setString(3, s.getName());
            ps.setString(4, s.getTel());
            ps.setString(5, s.getSfid());
            ps.setString(6, s.getBz());
            ps.setString(7, s.getFlag());
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
            System.out.println(ps + " Dbcar.Insert()");
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
        	//System.out.println(FinalConstants.SELECT_SSORT + sql+"...");
        	
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_CAR + sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Car s = new Car();
                s.setId(rs.getInt("id"));
                s.setCarNo(ParamUtils.getSqlString(rs.getString("carNo")));
                s.setCarColour(ParamUtils.getSqlString(rs.getString("carColour")));
                s.setName(ParamUtils.getSqlString(rs.getString("name")));
                s.setTel(ParamUtils.getSqlString(rs.getString("tel")));
                s.setSfid(ParamUtils.getSqlString(rs.getString("sfid")));
                s.setBz(ParamUtils.getSqlString(rs.getString("bz")));
                s.setFlag(ParamUtils.getSqlString(rs.getString("flag")));
                coll.add(s);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            } finally {
            System.out.println(ps + " Dbcar.Select(String sql) ");
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

    //Ò³Êý+SQLÌõ¼þ
    public Collection Select(int page, String sql) {
        Collection coll = new ArrayList();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        int tip = FinalConstants.STEP * (page - 1);
        
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_CAR + sql);
            rs = ps.executeQuery();
            if (tip <= 0) {
                rs.beforeFirst();
            } else {
                if (!rs.absolute(tip)) {
                    rs.beforeFirst();
                }
            }
            for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
                Car link = new Car();
                link.setId(rs.getInt("id"));
                link.setCarNo(ParamUtils.getSqlString(rs.getString("carNo")));
                link.setCarColour(ParamUtils.getSqlString(rs.getString("carColour")));
                link.setName(ParamUtils.getSqlString(rs.getString("name")));
                link.setTel(ParamUtils.getSqlString(rs.getString("tel")));
                link.setSfid(ParamUtils.getSqlString(rs.getString("sfid")));
                link.setBz(ParamUtils.getSqlString(rs.getString("bz")));
                link.setFlag(ParamUtils.getSqlString(rs.getString("flag")));
                coll.add(link);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " Dbcar.Select(int page,String sql) ");
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
            ps = con.prepareStatement(FinalConstants.UPDATE_CAR);
            ps.setString(1, s.getCarNo());
            ps.setString(2, s.getCarColour());
            ps.setString(3, s.getName());
            ps.setString(4, s.getTel());
            ps.setString(5, s.getSfid());
            ps.setString(6, s.getBz());
            ps.setString(7, s.getFlag());
            ps.setInt(8, s.getId());
            if (ps.executeUpdate() > 0) {
                b = true;
            } else {
                b = false;
            }
        } catch (SQLException e) {
            b = false;
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Dbaffiche.Update() ");
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
       
    }
    @Override
    public String getCarNo() {
		return s.getCarNo();
	}
    @Override
	public void setCarNo(String carNo) {
    	s.setCarNo(carNo);
	}
    @Override
	public String getCarColour() {
		return s.getCarColour();
	}
	public void setCarColour(String carColour) {
		s.setCarColour(carColour);
	}
	public String getTel() {
		return s.getTel();
	}
	public void setTel(String tel) {
		s.setTel(tel);
	}
	public String getSfid() {
		return s.getSfid();
	}
	public void setSfid(String sfid) {
		s.setSfid(sfid);
	}
	public String getBz() {
		return s.getBz();
	}
	public void setBz(String bz) {
		s.setBz(bz);
	}
	public String getFlag() {
		return s.getFlag();
	}
	public void setFlag(String flag) {
		s.setFlag(flag);
		 Update();
	}

}