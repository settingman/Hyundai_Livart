package dto;

public class CartItemVO {

	private int cart_cart_id;
	private String product_p_id;
	private int quantity;
	

	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getCart_cart_id() {
		return cart_cart_id;
	}
	public void setCart_cart_id(int cart_cart_id) {
		this.cart_cart_id = cart_cart_id;
	}
	public String getProduct_p_id() {
		return product_p_id;
	}
	public void setProduct_p_id(String product_p_id) {
		this.product_p_id = product_p_id;
	}
}
