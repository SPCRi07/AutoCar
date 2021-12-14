package ecj.project.stu141.data;

public class Carsdata {
	
	int id;
	String name;
	String Cartype;
	String carimage;
	public Carsdata(int id, String name, String cartype, String carimage) {
		super();
		this.id = id;
		this.name = name;
		Cartype = cartype;
		this.carimage = carimage;
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
	public String getCartype() {
		return Cartype;
	}
	public void setCartype(String cartype) {
		Cartype = cartype;
	}
	public String getCarimage() {
		return carimage;
	}
	public void setCarimage(String carimage) {
		this.carimage = carimage;
	}



}
