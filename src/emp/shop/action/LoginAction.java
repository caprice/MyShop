package emp.shop.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.bean.HitBean;
import emp.shop.form.UserForm;
import emp.shop.idao.IProductDao;
import emp.shop.idao.IProductTypeDao;
import emp.shop.idao.ISiteHitDao;
import emp.shop.idao.IUserDao;
import emp.shop.model.SiteHit;
import emp.shop.model.User;

public class LoginAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		UserForm uf = (UserForm)form;
		
		String username = uf.getUsername();
		String password = uf.getPassword();
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		
		IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
		User user = (User)app.getBean("user");
		
		
		IProductTypeDao productTypeDao = (IProductTypeDao)app.getBean("productTypeDaoProxy");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		ISiteHitDao siteHitDao = (ISiteHitDao)app.getBean("siteHitDaoProxy");
		
		SiteHit siteHit = (SiteHit)app.getBean("siteHit");
		
		
		boolean flag = userDao.queryUserByNameAndPass(username, password);
		
		if(flag == true) {
			
			user = userDao.queryUserByName(username); 
			
			request.getSession().setAttribute("user", user);
			
			
			//---------------------------------------------------------------
			
			//��ѯ������Ʒ���� ����ӵ�request��
			
			List productTypeList = productTypeDao.queryProductType();
			request.setAttribute("productTypeList", productTypeList);
			
			
			//����Ʒ����ʲ�ѯ������Ʒ ����ӵ�request�� 
			
			List productList = productDao.queryAllProductLimit();
			request.setAttribute("productList2", productList);
			
			
			//����Ʒ����������ѯ������Ʒ ����ӵ�request�� 
			
			List saleCountList = productDao.queryProductByProductSaleCount();
			request.setAttribute("saleCountList", saleCountList);
			
			
			//����Ʒ��Ų�ѯ������Ʒ ����ӵ�request�� 
			
			List proList = productDao.queryAllProduct();
			request.setAttribute("proList", proList);
			
			
			//���û��Ļ��ֲ�ѯ�����û� ����ӵ�request�� 
			
			List userList = userDao.queryALLUserByMemberScore();
			request.setAttribute("userList", userList);
			
			
			//��ѯ��վ�����
			
			siteHit = siteHitDao.queryHit();
			
			String s_hit = siteHit.getHit() + "";
			char arrHit[] = s_hit.toCharArray();
			
			List hitList = new ArrayList();
			
			for(int i=0; i<arrHit.length; i++) {
				HitBean hitbean = new HitBean();
				
				hitbean.setLength(arrHit.length);
				hitbean.setArrHit(arrHit[i]);
				
				hitList.add(hitbean);
			}
			request.setAttribute("hitList", hitList);
			siteHit.setHit(siteHit.getHit() + 1);
			siteHitDao.modifySiteHit(siteHit);
			
			//---------------------------------------------------------------
			
			return mapping.findForward("success");
		} else {
			
			return mapping.findForward("failure");
		}
	}

}
