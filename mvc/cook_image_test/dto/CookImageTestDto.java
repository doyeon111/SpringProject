package yuhan.mvc.cook_image_test.dto;

public class CookImageTestDto {
	private int cook_no;
	private int no;
	private String image;
	
	public CookImageTestDto(int cook_no, int no, String image) {
		super();
		this.cook_no = cook_no;
		this.no = no;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
