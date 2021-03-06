package entity;
// Generated Apr 8, 2019 9:05:04 AM by Hibernate Tools 4.3.1

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * ThongTinKhachHang generated by hbm2java
 */
@Entity
@Table(name = "thongtinkhachhang")
public class ThongTinKhachHang implements java.io.Serializable {

    @Id
    private String khachHangId;

    @ManyToOne
    @JoinColumn(name = "canhoid")
    private CanHo canHo;
    private String tenKhachHang;
    private String cmnd;
    private Boolean gioiTinh;
    private String soDt;
    private String email;
    private String trangThai;
    private Boolean chuHo;
    @OneToMany(mappedBy = "canho", cascade = CascadeType.ALL)
    List<CanHo> addList = new ArrayList<CanHo>();

    public List<CanHo> getAddList() {
        return addList;
    }

    public void setAddList(List<CanHo> addList) {
        this.addList = addList;
    }

    public ThongTinKhachHang() {
    }

    public ThongTinKhachHang(String khachHangId) {
        this.khachHangId = khachHangId;
    }

    public ThongTinKhachHang(String khachHangId, CanHo canHo, String tenKhachHang, String cmnd, Boolean gioiTinh, String nh, String email, String trangThai, Boolean chuHo) {
        this.khachHangId = khachHangId;
        this.canHo = canHo;
        this.tenKhachHang = tenKhachHang;
        this.cmnd = cmnd;
        this.gioiTinh = gioiTinh;
        this.soDt = soDt;
        this.email = email;
        this.trangThai = trangThai;
        this.chuHo = chuHo;
    }

    public String getKhachHangId() {
        return this.khachHangId;
    }

    public void setKhachHangId(String khachHangId) {
        this.khachHangId = khachHangId;
    }

    public CanHo getCanHo() {
        return this.canHo;
    }

    public void setCanHo(CanHo canHo) {
        this.canHo = canHo;
    }

    public String getTenKhachHang() {
        return this.tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    public String getCmnd() {
        return this.cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public Boolean getGioiTinh() {
        return this.gioiTinh;
    }

    public void setGioiTinh(Boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getSoDt() {
        return this.soDt;
    }

    public void setSoDt(String soDt) {
        this.soDt = soDt;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTrangThai() {
        return this.trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Boolean getChuHo() {
        return this.chuHo;
    }

    public void setChuHo(Boolean chuHo) {
        this.chuHo = chuHo;
    }

}
