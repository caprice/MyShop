package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.UserForm;
import emp.shop.idao.IUserDao;
import emp.shop.model.User;

public class UserAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		UserForm uf = (UserForm)form;
		
		if(uf.getPassword1().equals(uf.getPassword2())) {
			
			ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
			
			IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
			User user = (User)app.getBean("user");
			
			BeanUtils.copyProperties(user, uf);
			user.setPassword(uf.getPassword1());
			user.setCard_level("0�����");
			user.setMember_score(0);
			
			userDao.addUser(user);
		}
		return mapping.findForward("success");
	}

}
