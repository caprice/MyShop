package emp.shop.model;

import java.util.Set;

public class User {
	
	//�û����	
	private int user_id;
	
	//�û���	
	private String username;
	
	//�û�����
	private String password;
	
	//�û���ʵ����	
	private String truename;
	
	//�û�֤������
	private String certificate_type;
	
	//�û�֤������
	private String certificate_num;
	
	//�û��Ա�
	private String sex;
	
	//�û���ϸ��ַ
	private String address;
	
	//�û���ϵ��ʽ
	private String tel;
	
	//�û����ڵ��ʱ�
	private String zip;
	
	//�û����������ַ
	private String email;
	
	//�û�������ʾ����
	private String password_hint;
	
	//�û�������ʾ�����
	private String password_result;
	
	//��Ա������
	private String card_level;
	
	//��Ա����
	private int member_score;
	
	//����
	private Set order;
	
	private Set advice;
	
	public Set getAdvice() {
		return advice;
	}

	public void setAdvice(Set advice) {
		this.advice = advice;
	}

	public String getCard_level() {
		return card_level;
	}

	public void setCard_level(String card_level) {
		this.card_level = card_level;
	}

	public int getMember_score() {
		return member_score;
	}

	public void setMember_score(int member_score) {
		this.member_score = member_score;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTruename() {
		return truename;
	}

	public void setTruename(String truename) {
		this.truename = truename;
	}

	public String getCertificate_num() {
		return certificate_num;
	}

	public void setCertificate_num(String certificate_num) {
		this.certificate_num = certificate_num;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword_hint() {
		return password_hint;
	}

	public void setPassword_hint(String password_hint) {
		this.password_hint = password_hint;
	}

	public String getPassword_result() {
		return password_result;
	}

	public void setPassword_result(String password_result) {
		this.password_result = password_result;
	}

	public String getCertificate_type() {
		return certificate_type;
	}

	public void setCertificate_type(String certificate_type) {
		this.certificate_type = certificate_type;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Set getOrder() {
		return order;
	}

	public void setOrder(Set order) {
		this.order = order;
	}

}
