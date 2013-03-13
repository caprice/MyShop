package emp.shop.idao;

import java.util.List;

import emp.shop.model.User;

public interface IUserDao {

	//�û����
	public void addUser(User user);
	
	//�û�ɾ��
	public void deleteUser(User user);
	
	//�û��޸�
	public void modifyUser(User user);
	
	//��ѯȫ���û�
	public List queryUser();
	
	//ͨ���û�����ѯ
	public User queryUserByName(String username);
	
	//ͨ���û����������ѯ
	public boolean queryUserByNameAndPass(String username, String password);
	
	public List queryALLUserByMemberScore();
	
	public User queryUserById(int user_id);
	
}
