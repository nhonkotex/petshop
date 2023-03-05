package do_an2022.model;

public class productGT {
	private int id;
	private String name;
	private String gia;
	private String giachinh;
	private String chitiet;
	private String image;

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

	public String getGia() {
		return gia;
	}

	public void setGia(String gia) {
		this.gia = gia;
	}

	public String getGiachinh() {
		return giachinh;
	}

	public void setGiachinh(String giachinh) {
		this.giachinh = giachinh;
	}
	

	public String getChitiet() {
		return chitiet;
	}

	public void setChitiet(String chitiet) {
		this.chitiet = chitiet;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "productGT [id=" + id + ", name=" + name + ", gia=" + gia + ", giachinh=" + giachinh + ", chitiet="
				+ chitiet + ", image=" + image + "]";
	}

	
	
}