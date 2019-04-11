/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import duan.JDBC.JDBC;
import entity.CanHo;
import entity.HoaDonInternet;
import entity.ThongTinKhachHang;
import java.sql.ResultSet;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import until.HibernateUtil;

/**
 *
 * @author Admin
 */
public class InternetDAO {
     public static List<ThongTinKhachHang> Show2Bang() {
        List<ThongTinKhachHang> list = null;
        try {
            String sql = " from ThongTinKhachHang kh inner join fetch kh.canHo c";
            Session session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery(sql);
            list = query.list();
            list.stream().forEach((p) -> {
                System.out.println(p.getSoDt());
                System.out.println(p.getCanHo().getTang());

            });
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }

    public static List<ThongTinKhachHang> TimKH(String sdt) {
        List<ThongTinKhachHang> list = null;
        try {
            String sql = " from ThongTinKhachHang kh inner join fetch kh.canHo c";

            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            session.beginTransaction();
            if (sdt.length() > 0) {
                sql += " where kh.soDt = '" + sdt + "'";
            }
            Query query = session.createQuery(sql);
            list = query.list();

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }

    public static List<HoaDonInternet> ctit(String sdt) {

        List<HoaDonInternet> list = null;
        ResultSet rs = JDBC.executeQuery("EXec SearchSDTHDInt @sdt = ?", sdt);
        try {
              NumberFormat nf = NumberFormat.getInstance();
               nf.setMinimumIntegerDigits(0);
            list = new ArrayList<>();
            while (rs.next()) {
                ThongTinKhachHang t = new ThongTinKhachHang(); // doi tuong
                CanHo ch = new CanHo(); //canho
                HoaDonInternet it = new HoaDonInternet();
                t.setTenKhachHang(rs.getString(2)); // du lieu/ chinh lai cot
                t.setKhachHangId(rs.getString(1));       
                t.setSoDt(rs.getString(3));
                ch.setCanHoId(rs.getString(4));
                //chinh la cai ch.setkhachhang(t) ma t la ThongTinhKhachHang ah hiu r hiu r
                ch.setKhachHang(t); //gio du lieu KH da add vao Doi TUOng can ho, cos nghia can ho la chu so huu cua KH do. hieu chua
                it.setHoaDonInternetId(rs.getString(5));
                it.setNgayThang(rs.getDate(6));
                it.setTien(rs.getDouble(7));
              
                it.setCanHo(ch);
                list.add(it);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
       List<HoaDonInternet> lisst =  ctit("0908118444");
                System.out.println(lisst.get(0).getCanHo().getKhachHang().getTenKhachHang());

        System.out.println(lisst.get(0).getCanHo().getKhachHang().getTenKhachHang());

    }
}
