package do_an2022.model;

public class Thongbao {
	private int id;
	private String nameTB;
	private String ndC;
	private String ndP;
	private String image;
	public Thongbao() {
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNameTB() {
		return nameTB;
	}
	public void setNameTB(String nameTB) {
		this.nameTB = nameTB;
	}
	public String getNdC() {
		return ndC;
	}
	public void setNdC(String ndC) {
		this.ndC = ndC;
	}
	public String getNdP() {
		return ndP;
	}
	public void setNdP(String ndP) {
		this.ndP = ndP;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Thongbao [id=" + id + ", nameTB=" + nameTB + ", ndC=" + ndC + ", ndP=" + ndP + ", image=" + image + "]";
	}
	

}
