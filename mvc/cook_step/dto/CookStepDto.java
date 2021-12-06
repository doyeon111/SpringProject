package yuhan.mvc.cook_step.dto;

public class CookStepDto {

	private int cook_no;
	private int no;
	private String description;
	private String name;
	private String image;
	
	
	public CookStepDto(int cook_no, int no, String description, String name, String image) {
		this.cook_no = cook_no;
		this.no = no;
		this.description = description;
		this.name = name;
		this.image = image;
	}
	
	public int getCook_no() {
		return cook_no;
	}
	public void setCook_no(int cook_no) {
		this.cook_no = cook_no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
