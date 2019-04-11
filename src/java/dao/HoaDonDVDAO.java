/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.HoaDonDichVu;
import entity.HoaDonInternet;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import until.HibernateUtil;

/**
 *
 * @author Admin
 */
public class HoaDonDVDAO {
     public static List<HoaDonDichVu> layDanhSachHoaDon(String user) {
        List<HoaDonDichVu> list = null;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String sql = "from HoaDonDichVu";
        if (user.length() > 0) {
            sql += " where  HoaDonDichVuId like '%" + user + "%'";
        }
        Query query = session.createQuery(sql);
        list = query.list();
        return list;
    }

    public HoaDonDVDAO() {

    }

    public List<HoaDonDichVu> timID(String id) { // List tim HD tham so la CanHoId ;
        List<HoaDonDichVu> list = null;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String sql = " from HoaDonDichVu where CanHoId ='" + id + "' order by Thang asc";
        Query query = session.createQuery(sql);
        list = query.list();
    
        return list;
    }

    public static HoaDonDichVu layTTHoaDon(String HoaDonId) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        HoaDonDichVu hdint = (HoaDonDichVu) session.get(HoaDonDichVu.class, HoaDonId);
        session.close();
        return hdint;
    }

    public static void main(String[] args) {
       for(HoaDonDichVu hd : layDanhSachHoaDon("")){
           System.out.println(hd.getHoaDonDichVuId());
       }
    }
}
