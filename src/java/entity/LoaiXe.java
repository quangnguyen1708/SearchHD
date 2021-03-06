package entity;
// Generated Apr 8, 2019 9:05:04 AM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * LoaiXe generated by hbm2java
 */
public class LoaiXe  implements java.io.Serializable {


     private String loaixeId;
     private Serializable loai;
     private Double giaTrongCoi;
     private Set<GuiXe> guiXes = new HashSet<GuiXe>(0);

    public LoaiXe() {
    }

	
    public LoaiXe(String loaixeId) {
        this.loaixeId = loaixeId;
    }
    public LoaiXe(String loaixeId, Serializable loai, Double giaTrongCoi, Set<GuiXe> guiXes) {
       this.loaixeId = loaixeId;
       this.loai = loai;
       this.giaTrongCoi = giaTrongCoi;
       this.guiXes = guiXes;
    }
   
    public String getLoaixeId() {
        return this.loaixeId;
    }
    
    public void setLoaixeId(String loaixeId) {
        this.loaixeId = loaixeId;
    }
    public Serializable getLoai() {
        return this.loai;
    }
    
    public void setLoai(Serializable loai) {
        this.loai = loai;
    }
    public Double getGiaTrongCoi() {
        return this.giaTrongCoi;
    }
    
    public void setGiaTrongCoi(Double giaTrongCoi) {
        this.giaTrongCoi = giaTrongCoi;
    }
    public Set<GuiXe> getGuiXes() {
        return this.guiXes;
    }
    
    public void setGuiXes(Set<GuiXe> guiXes) {
        this.guiXes = guiXes;
    }




}


