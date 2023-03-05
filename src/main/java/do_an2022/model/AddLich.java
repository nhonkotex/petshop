package do_an2022.model;

import java.io.Serializable;

public class AddLich implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private int id;
    private String name;
    private String sdt;
    private String ngay;
    private String gio;
    private String GhiChu;
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String std) {
		this.sdt = std;
	}
	public String getNgay() {
		return ngay;
	}
	public void setNgay(String ngay) {
		this.ngay = ngay;
	}
	public String getGio() {
		return gio;
	}
	public void setGio(String gio) {
		this.gio = gio;
	}
	
	public String getGhiChu() {
		return GhiChu;
	}
	public void setGhiChu(String GhiChu) {
		this.GhiChu = GhiChu;
	}
}
