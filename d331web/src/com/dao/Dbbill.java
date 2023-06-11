package com.dao;

import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import com.core.Database;
import com.core.FinalConstants;
import com.core.ParamUtils;
import com.model.Bill;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */

public class Dbbill extends Bill {
    private Bill n=new Bill();
    public Dbbill() {
    }
    public Dbbill(String sql) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_BILL + sql,
                                      ResultSet.TYPE_SCROLL_INSENSITIVE,
                                      ResultSet.CONCUR_READ_ONLY);
            rs = ps.executeQuery();
            if (rs.next()) {
                n.setId(rs.getInt("id"));
                n.setBillNO(ParamUtils.getSqlString(rs.getString("billNO")));
                n.setBxname(ParamUtils.getSqlString(rs.getString("bxname")));
                n.setCbrname(ParamUtils.getSqlString(rs.getString("cbrname")));
                n.setTbrname(ParamUtils.getSqlString(rs.getString("tbrname")));
                n.setDate(ParamUtils.getSqlString(rs.getString("date")));
                n.setQx(ParamUtils.getSqlString(rs.getString("qx")));
                n.setBr(ParamUtils.getSqlString(rs.getString("br")));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        } finally {
            System.out.println(ps + " DbBill(String sql) " + n.getId());
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
    public Dbbill(HttpServletRequest request) {
    	n.setBillNO(ParamUtils.getRequestString(request,"billNO"));
        n.setBxname(ParamUtils.getRequestString(request,"bxname"));
        n.setCbrname(ParamUtils.getRequestString(request,"cbrname"));
        n.setTbrname(ParamUtils.getRequestString(request,"tbrname"));
        n.setDate(ParamUtils.getRequestString(request,"date"));
        n.setQx(ParamUtils.getRequestString(request,"qx"));
        n.setBr(ParamUtils.getRequestString(request,"br"));
    }
    public boolean Insert() {
        boolean b = false;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.INSERT_BILL);
            ps.setString(1, n.getBillNO());
            ps.setString(2, n.getBxname());
            ps.setString(3, n.getCbrname());
            ps.setString(4, n.getTbrname());
            ps.setString(5, n.getDate());
            ps.setString(6, n.getQx());
            ps.setString(7, n.getBr());
            
            System.out.println("---------------------------------");
            
            
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
            System.out.println(ps + " Dbbill.Insert()");
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
            ps = con.prepareStatement(FinalConstants.SELECT_BILL + sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Bill nw= new Bill();
                nw.setId(rs.getInt("id"));
                nw.setBillNO(ParamUtils.getSqlString(rs.getString("billNO")));
                nw.setBxname(ParamUtils.getSqlString(rs.getString("bxname")));
                nw.setCbrname(ParamUtils.getSqlString(rs.getString("cbrname")));
                nw.setTbrname(ParamUtils.getSqlString(rs.getString("tbrname")));
                nw.setDate(ParamUtils.getSqlString(rs.getString("date")));
                nw.setQx(ParamUtils.getSqlString(rs.getString("qx")));
                nw.setBr(ParamUtils.getSqlString(rs.getString("br")));
                coll.add(nw);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " DbBill.Select(String sql) ");
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
    	System.out.println("-222--------------------------------");
        Collection coll = new ArrayList();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        int tip = FinalConstants.STEP * (page - 1);
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(FinalConstants.SELECT_BILL + sql);
            rs = ps.executeQuery();
            if (tip <= 0) {
                rs.beforeFirst();
            } else {
                if (!rs.absolute(tip)) {
                    rs.beforeFirst();
                }
            }
            for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
                Bill nw= new Bill();
                nw.setId(rs.getInt("id"));
                nw.setBillNO(ParamUtils.getSqlString(rs.getString("billNO")));
                nw.setBxname(ParamUtils.getSqlString(rs.getString("bxname")));
                nw.setCbrname(ParamUtils.getSqlString(rs.getString("cbrname")));
                nw.setTbrname(ParamUtils.getSqlString(rs.getString("tbrname")));
                nw.setDate(ParamUtils.getSqlString(rs.getString("date")));
                nw.setQx(ParamUtils.getSqlString(rs.getString("qx")));
                nw.setBr(ParamUtils.getSqlString(rs.getString("br")));
                coll.add(nw);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " Dbaffiche.Select(int page,String sql) ");
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
            ps = con.prepareStatement(FinalConstants.UPDATE_BILL);
            
            ps.setString(1, n.getBillNO());
            ps.setString(2, n.getBxname());
            ps.setString(3, n.getCbrname());
            ps.setString(4, n.getTbrname());
            ps.setString(5, n.getDate());
            ps.setString(6, n.getQx());
            ps.setString(7, n.getBr());
            ps.setInt(8, n.getId());
            
            
            if (ps.executeUpdate() > 0) {
                b = true;
            } else {
                b = false;
            }
        } catch (SQLException e) {
            b = false;
            e.printStackTrace();
        } finally {
            System.out.println(ps + " Dbbill.Update() ");
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
		return n.getId();
	}
	@Override
	public void setId(int id) {
		n.setId(id);
	}
	@Override
	public String getBillNO() {
		return n.getBillNO();
	}
	@Override
	public void setBillNO(String billNO) {
		n.setBillNO(billNO);
		Update();
	}
	@Override
	public String getBxname() {
		return n.getBxname();
	}
	@Override
	public void setBxname(String bxname) {
		n.setBxname(bxname);
		Update();
	}
	@Override
	public String getCbrname() {
		return n.getCbrname();
	}
	@Override
	public void setCbrname(String cbrname) {
		n.setCbrname(cbrname);
		Update();
	}
	@Override
	public String getTbrname() {
		return n.getTbrname();
	}
	@Override
	public void setTbrname(String tbrname) {
		n.setTbrname(tbrname);
		Update();
	}
	@Override
	public String getDate() {
		return n.getDate();
	}
	@Override
	public void setDate(String date) {
		n.setDate(date);
		Update();
	}
	@Override
	public String getQx() {
		return n.getQx();
	}
	@Override
	public void setQx(String qx) {
		n.setQx(qx);
		Update();
	}
	@Override
	public String getBr() {
		return n.getBr();
	}
	@Override
	public void setBr(String br) {
		n.setBr(br);
		Update();
	}
}