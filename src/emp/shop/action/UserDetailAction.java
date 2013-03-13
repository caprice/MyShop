package emp.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.form.UserForm;
import emp.shop.idao.IUserDao;
import emp.shop.model.User;

public class UserDetailAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm uf = (UserForm)form;
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
		User user = (User)app.getBean("user");
		
		user = userDao.queryUserById(uf.getUser_id());
		
		request.setAttribute("back_user", user);

		return mapping.findForward("success");
	}

}
