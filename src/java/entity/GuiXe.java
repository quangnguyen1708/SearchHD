package entity;
// Generated Apr 8, 2019 9:05:04 AM by Hibernate Tools 4.3.1



/**
 * GuiXe generated by hbm2java
 */
public class GuiXe  implements java.io.Serializable {


     private int guiXeId;
     private HoaDonDichVu hoaDonDichVu;
     private LoaiXe loaiXe;
     private Short soLuong;
     private Double tienGuiXe;

    public GuiXe() {
    }

	
    public GuiXe(int guiXeId) {
        this.guiXeId = guiXeId;
    }
    public GuiXe(int guiXeId, HoaDonDichVu hoaDonDichVu, LoaiXe loaiXe, Short soLuong, Double tienGuiXe) {
       this.guiXeId = guiXeId;
       this.hoaDonDichVu = hoaDonDichVu;
       this.loaiXe = loaiXe;
       this.soLuong = soLuong;
       this.tienGuiXe = tienGuiXe;
    }
   
    public int getGuiXeId() {
        return this.guiXeId;
    }
    
    public void setGuiXeId(int guiXeId) {
        this.guiXeId = guiXeId;
    }
    public HoaDonDichVu getHoaDonDichVu() {
        return this.hoaDonDichVu;
    }
    
    public void setHoaDonDichVu(HoaDonDichVu hoaDonDichVu) {
        this.hoaDonDichVu = hoaDonDichVu;
    }
    public LoaiXe getLoaiXe() {
        return this.loaiXe;
    }
    
    public void setLoaiXe(LoaiXe loaiXe) {
        this.loaiXe = loaiXe;
    }
    public Short getSoLuong() {
        return this.soLuong;
    }
    
    public void setSoLuong(Short soLuong) {
        this.soLuong = soLuong;
    }
    public Double getTienGuiXe() {
        return this.tienGuiXe;
    }
    
    public void setTienGuiXe(Double tienGuiXe) {
        this.tienGuiXe = tienGuiXe;
    }




}


