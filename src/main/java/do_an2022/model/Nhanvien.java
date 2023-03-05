package do_an2022.model;

public class Nhanvien {
	private int id;
	private String nameNV;
	private String chucvu;
	private String sdt;
	private String soCMND;
	private String diachi;
	private String Luong;
	private String note;
	private String sotruong;
	private String image;
	
	public Nhanvien() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameNV() {
		return nameNV;
	}

	public void setNameNV(String nameNV) {
		this.nameNV = nameNV;
	}

	public String getChucvu() {
		return chucvu;
	}

	public void setChucvu(String chucvu) {
		this.chucvu = chucvu;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getSoCMND() {
		return soCMND;
	}

	public void setSoCMND(String soCMND) {
		this.soCMND = soCMND;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getLuong() {
		return Luong;
	}

	public void setLuong(String luong) {
		Luong = luong;
	}
	
	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getSotruong() {
		return sotruong;
	}

	public void setSotruong(String sotruong) {
		this.sotruong = sotruong;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Nhanvien [id=" + id + ", nameNV=" + nameNV + ", chucvu=" + chucvu + ", sdt=" + sdt + ", soCMND="
				+ soCMND + ", diachi=" + diachi + ", Luong=" + Luong + ", note=" + note + ", sotruong=" + sotruong
				+ ", image=" + image + "]";
	}

	
	
	
}

