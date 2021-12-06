package yuhan.mvc.cook_ingredient.dto;

public class CookIngredientDto {

	private int cook_no;
	private int no;
	private int ingredient_no;
	private String quantity;

	
	public CookIngredientDto(int cook_no, int no, int ingredient_no, String quantity) {
		super();
		this.cook_no = cook_no;
		this.no = no;
		this.ingredient_no = ingredient_no;
		this.quantity = quantity;
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
	public int getIngredient_no() {
		return ingredient_no;
	}
	public void setIngredient_no(int ingredient_no) {
		this.ingredient_no = ingredient_no;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	
	
}
