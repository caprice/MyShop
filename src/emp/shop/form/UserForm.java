package emp.shop.form;

import org.apache.struts.validator.ValidatorForm;

public class UserForm extends ValidatorForm{

	private int user_id;
	
	//�û���	
	private String username;
	
	//��¼����
	private String password;
	
	//�û�����
	private String password1;
	
	//�û�ȷ������
	private String password2;
	
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
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

}
