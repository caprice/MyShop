package emp.shop.model;

public class OrderItem {

	//����������
	private int order_item_id;
	
	//��������
	private String sale_count;
	
	//����
	private Orders orders;

	//������
	private Product product;
	
	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getOrder_item_id() {
		return order_item_id;
	}

	public void setOrder_item_id(int order_item_id) {
		this.order_item_id = order_item_id;
	}

	public String getSale_count() {
		return sale_count;
	}

	public void setSale_count(String sale_count) {
		this.sale_count = sale_count;
	}
}
