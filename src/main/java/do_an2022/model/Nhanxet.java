package do_an2022.model;

public class Nhanxet {
	private int id;
	private String name;
	private String dv;
	private String sp ;
	private String nv;
	private String nx;
	private String traloi;
	public Nhanxet() {
		
	}

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

	public String getDv() {
		return dv;
	}

	public void setDv(String dv) {
		this.dv = dv;
	}

	public String getSp() {
		return sp;
	}

	public void setSp(String sp) {
		this.sp = sp;
	}

	public String getNv() {
		return nv;
	}

	public void setNv(String nv) {
		this.nv = nv;
	}

	public String getNx() {
		return nx;
	}

	public void setNx(String nx) {
		this.nx = nx;
	}
	
	public String getTraloi() {
		return traloi;
	}

	public void setTraloi(String traloi) {
		this.traloi = traloi;
	}

	@Override
	public String toString() {
		return "Nhanxet [id=" + id + ", name=" + name + ", dv=" + dv + ", sp=" + sp + ", nv=" + nv + ", nx=" + nx
				+ ", traloi=" + traloi + "]";
	}

	
	

}
