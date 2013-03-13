package emp.shop.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.idao.IManagerDao;

public class BackModifyMagAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		IManagerDao managerDao = (IManagerDao)app.getBean("managerDaoProxy");
		
		List managerList = managerDao.queryAllManager();
		
		request.setAttribute("back_managerList", managerList);
		
		return mapping.findForward("success");
	}

}
