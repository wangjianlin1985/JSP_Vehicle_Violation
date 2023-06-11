package com.dao;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import com.model.*;
import com.core.BasetableFactory;
import com.core.Database;
import com.core.FileUtils;
import com.core.FinalConstants;
import com.jspsmart.upload.Request;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @version 1.0
 * 具体工厂
 */

public class DbBasetableFactory extends BasetableFactory {
    public DbBasetableFactory() {//构造方法
    }
    //获取记录总数
    @Override
	public int getRow(String sql) {
        return Database.getRow(sql);
    }
//创建用户
    @Override
	public boolean CreateUser(HttpServletRequest request) {
        return (new Dbuser(request)).Insert();
    }
//获取用户信息
    @Override
	public User SearchUser(String sql) {
        return new Dbuser(sql);
    }
//查询用户信息列表
    @Override
	public Collection ListUser(int page, String sql) {
        return new Dbuser().Select(page, sql);
    }
//查询头像列表
    @Override
	public Collection ListHead(int page, String sql) {
        return new Dbhead().Select(page, sql);
    }
//获取头像信息
    @Override
	public Head SearchHead(String sql) {
        return new Dbhead(sql);
    }
//添加头像信息
    @Override
	public boolean CreateHead(String iid, String path, int state) {
        return new Dbhead(iid, path, state).Insert();
    }
//查询公告信息列表
    @Override
	public Collection ListAffiche(int page, String sql) {
        return new Dbaffiche().Select(page, sql);
    }
    @Override
	public Collection ListAffiche(String sql) {
        return new Dbaffiche().Select(sql);
    }
//添加公告信息
    @Override
	public boolean CreateAffiche(HttpServletRequest request) {
        return new Dbaffiche(request).Insert();
    }
//获取公告信息
    @Override
	public Affiche SearchAffiche(String sql) {
        return new Dbaffiche(sql);
    }
//删除公告信息
    @Override
	public boolean DeleteAffiche(String sql) {
        return Database.Delete(FinalConstants.DELETE_AFFICHE + sql);
    }
    
    


    //查询保单列表
        @Override
		public Collection ListBill(int page, String sql) {
        	
            return new Dbbill().Select(page, sql);
        }
        @Override
		public Collection ListBill(String sql) {
            return new Dbbill().Select(sql);
        }

    //获取保单信息
        @Override
		public Bill SearchBill(String sql) {
            return new Dbbill(sql);
        }
        //添加保单信息
        @Override
		public boolean CreateBill(HttpServletRequest request) {
      	  System.out.println("-222--------------------------------");
            return new Dbbill(request).Insert();
        }
        //删除保单信息
        @Override
		public boolean DeleteBill(String sql) {
            return Database.Delete(FinalConstants.DELETE_BILL + sql);
        }
    
    
    
    
    
//查询新闻信息列表
    @Override
	public Collection ListNew(int page, String sql) {
        return new Dbnew().Select(page, sql);
    }
    @Override
	public Collection ListNew(String sql) {
        return new Dbnew().Select(sql);
    }

//获取新闻信息信息
    @Override
	public New SearchNew(String sql) {
        return new Dbnew(sql);
    }
    //添加新闻信息信息
    @Override
	public boolean CreateNew(HttpServletRequest request) {
        return new Dbnew(request).Insert();
    }
    //删除新闻信息信息
    @Override
	public boolean DeleteNew(String sql) {
        return Database.Delete(FinalConstants.DELETE_NEW + sql);
    }
    //查询友情链接信息列表
    @Override
	public Collection ListLink(int page, String sql) {
        return new Dblink().Select(page, sql);
    }
    //获取友情链接信息
    @Override
	public Link SearchLink(String sql) {
        return new Dblink(sql);
    }
    //添加友情链接信息
    @Override
	public boolean CreateLink(HttpServletRequest request) {
        return new Dblink(request).Insert();
    }
    //删除友情链接信息
    @Override
	public boolean DeleteLink(String sql) {
        return Database.Delete(FinalConstants.DELETE_LINK + sql);
    }
    
    
    
    
    
    
    
    
    //查询车辆信息列表
    @Override
	public Collection ListCar(int page, String sql) {
        return new Dbcar().Select(page, sql);
    }
    //获取车辆信息
    @Override
	public Car SearchCar(String sql) {
        return new Dbcar(sql);
    }
    //添加车辆信息
    @Override
	public boolean CreateCar(HttpServletRequest request) {
        return new Dbcar(request).Insert();
    }
    //删除车辆信息
    @Override
	public boolean DeleteCar(String sql) {
        return Database.Delete(FinalConstants.DELETE_CAR + sql);
    }
    
    //获取车辆信息
    @Override
	public Collection ListCar(String sql) {
        return new Dbcar().Select(sql);
    }
    //查询WZ信息列表
    @Override
	public Collection ListWz(int page, String sql) {
        return new Dbwz().Select(page, sql);
    }
    //获取WZ列表
    @Override
	public Wz SearchWz(String sql) {
        return new Dbwz(sql);
    }
    //添加WZ列表
    @Override
	public boolean CreateWz(HttpServletRequest request) {
        return new Dbwz(request).Insert();
    }
    //删除WZ列表
    @Override
	public boolean DeleteWz(HttpServletRequest request,String sql) {
        if (Database.Delete(FinalConstants.DELETE_WZ + sql)) {
            return true;
        }
        return false;
    }
    //查询WZ列表
    @Override
	public Collection ListWz(String sql) {
        return new Dbwz().Select(sql);
    }
    
    
    
    
    
    
    
    
    
    //获取解决方案信息
    @Override
	public Resolvent SearchResolvent(String sql) {
        return new Dbresolvent(sql);
    }
    //添加解决方案信息
    @Override
	public boolean CreateResolvent(Request request, String iid) {
        return new Dbresolvent(request, iid).Insert();
    }
    //删除解决方案信息
    @Override
	public boolean DeleteResolvent(String sql) {
        return Database.Delete(FinalConstants.DELETE_RESOLVENT + sql);
    }
    
    //查询解决方案信息列表
    @Override
	public Collection ListResolvent(String sql) {
        return new Dbresolvent().Select(sql);
    }
    //查询解决方案信息列表（包括分页）
    @Override
	public Collection ListResolvent(int page, String sql) {
        return new Dbresolvent().Select(page, sql);
    }
    //查询安全常识列表（包括分页）
    @Override
	public Collection ListQuestion(int page, String sql) {
        return new Dbquestion().Select(page, sql);
    }
    //获取安全常识信息
    @Override
	public Question SearchQuestion(String sql) {
        return new Dbquestion(sql);
    }

    @Override
	public boolean CreateQuestion(HttpServletRequest request) {
        return new Dbquestion(request).Insert();
    }

    @Override
	public boolean DeleteQuestion(String sql) {
        return Database.Delete(FinalConstants.DELETE_QUESTION + sql);
    }


    @Override
	public Collection ListQuestion(String sql) {
        return new Dbquestion().Select(sql);
    }

    @Override
	public Collection ListGuestboard(int page, String sql) {
        return new Dbguestboard().Select(page, sql);
    }

    @Override
	public Collection ListGuestboard(String sql) {
        return new Dbguestboard().Select(sql);
    }
    //获取讨论簿信息
    @Override
	public Guestboard SearchGuestboard(String sql) {
        return new Dbguestboard(sql);
    }

    @Override
	public boolean CreateGuestboard(HttpServletRequest request) {
        return new Dbguestboard(request).Insert();
    }

    @Override
	public boolean DeleteGuestboard(String sql) {
        return Database.Delete(FinalConstants.DELETE_GUESTBOARD + sql);
    }



    @Override
	public boolean DeleteHead(HttpServletRequest request, String sql) {
        if (!FileUtils.FileDel(request, SearchHead(sql).getPath())) {
            System.out.println("图片删除失败");
        }
        if (Database.Delete(FinalConstants.DELETE_HEAD + sql)) {
            return true;
        }
        return false;
    }
    
}
