package emp.shop.model;

public class Orders {

	//��������
	private int order_id;
	
	//������
	private String order_num;
	
	//������ַ
	private String send_place;
	
	//��������
	private String order_time;
	
	//����״̬
	private String order_status;
	
	//�ջ���
	private String send_man;
	
	//�ջ����ʱ�
	private String send_zip;
	
	//�ջ��˵绰
	private String send_phone;
	
	//�ջ���Email
	private String send_email;
	
	//��ע
	private String bak;
	
	//�û�
	private User user;
	
	//������
	private PayType payType;
	
	//������
	private OrderItem orderItem;

	public OrderItem getOrderItem() {
		return orderItem;
	}

	public void setOrderItem(OrderItem orderItem) {
		this.orderItem = orderItem;
	}

	public PayType getPayType() {
		return payType;
	}

	public void setPayType(PayType payType) {
		this.payType = payType;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getBak() {
		return bak;
	}

	public void setBak(String bak) {
		this.bak = bak;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getOrder_num() {
		return order_num;
	}

	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public String getOrder_time() {
		return order_time;
	}

	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}

	public String getSend_email() {
		return send_email;
	}

	public void setSend_email(String send_email) {
		this.send_email = send_email;
	}

	public String getSend_man() {
		return send_man;
	}

	public void setSend_man(String send_man) {
		this.send_man = send_man;
	}

	public String getSend_phone() {
		return send_phone;
	}

	public void setSend_phone(String send_phone) {
		this.send_phone = send_phone;
	}

	public String getSend_place() {
		return send_place;
	}

	public void setSend_place(String send_place) {
		this.send_place = send_place;
	}

	public String getSend_zip() {
		return send_zip;
	}

	public void setSend_zip(String send_zip) {
		this.send_zip = send_zip;
	}
}
