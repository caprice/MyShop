package emp.shop.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import emp.shop.bean.ShoppingCartBean;
import emp.shop.form.BakForm;
import emp.shop.form.PayTypeForm;
import emp.shop.idao.IOrderDao;
import emp.shop.idao.IOrderItemDao;
import emp.shop.idao.IProductDao;
import emp.shop.idao.IUserDao;
import emp.shop.model.OrderItem;
import emp.shop.model.Orders;
import emp.shop.model.PayType;
import emp.shop.model.Product;
import emp.shop.model.User;

public class SaveAllAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//�õ�form�еĸ��ʽform
		PayTypeForm ptf = (PayTypeForm)form;
		
		//�õ�session�е��û���Ϣ
		User user = (User)request.getSession().getAttribute("user");
		
		ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
		
		IOrderDao orderDao = (IOrderDao)app.getBean("orderDaoProxy");
		IOrderItemDao orderItemDao = (IOrderItemDao)app.getBean("orderItemDaoProxy");
		IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
		IUserDao userDao = (IUserDao)app.getBean("userDaoProxy");
		
		Orders orders = (Orders)app.getBean("order");
		PayType payType = (PayType)app.getBean("payType");
		OrderItem orderItem = (OrderItem)app.getBean("orderItem");
		Product product = (Product)app.getBean("product");
		User user1 = (User)app.getBean("user");
		
		//����orders�е����û����������Ϣ
		orders.setSend_place(user.getAddress());
		orders.setSend_man(user.getTruename());
		orders.setSend_zip(user.getZip());
		orders.setSend_email(user.getEmail());
		orders.setSend_phone(user.getTel());
		
		//�õ�session�еı�ע��Ϣ �����õ�orders��
		BakForm bf = (BakForm)request.getSession().getAttribute("bakForm");
		
		orders.setBak(bf.getBak());
		
		//����orders�е��û����
		orders.setUser(user);
		
		//����orders�еĸ��ʽ���
		payType.setPay_type_id(ptf.getPay_type_id());
		payType.setPay_type_name(ptf.getPay_type_name());
		
		orders.setPayType(payType);
		
		//���ö������Զ�������
		orders.setOrder_num("435jd834uh23kh523");
		
		//�������ڸ�ʽ��
		Date time = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyy-mm-dd hh:mm:ss");
		String s = sdf.format(time);
		
		orders.setOrder_time(s);
		orders.setOrder_status("δ����");
		
		//����orders
		orderDao.addOrder(orders);
		
		request.setAttribute("orders", orders);
		
		//��������
		List cartList = (List) request.getSession().getAttribute("cartList"); 

		for(int i=0; i<cartList.size(); i++) {
			ShoppingCartBean scb = (ShoppingCartBean) cartList.get(i);
			int product_id = scb.getProduct_id();
			String sale_count = scb.getSale_count();
			
			product = productDao.queryProductById(product_id);
			
			//���ò�Ʒ������
			product.setProduct_sale_count(product.getProduct_sale_count()+sale_count);
			product.setProduct_count((product.getProduct_count())- Integer.parseInt(sale_count));
			productDao.modifyProduct(product);
			
			orderItem.setSale_count(sale_count);
			orderItem.setProduct(product);
			orderItem.setOrders(orders);
			
			orderItemDao.addOrderItem(orderItem);
			
			//�޸��û����ֺ͵ȼ�
			String score = product.getProduct_price();
			char[] sc = score.toCharArray();
			
			score = "";
			
			for(int j=0; j<sc.length; i++){
				
				if(sc[i] !=  '.'){
					score = score + sc[i];
				}else {
					break;
				}
			}
			
			int member_score = Integer.parseInt(score);
			
			user1 = userDao.queryUserByName(user.getUsername());
			user1.setMember_score(member_score + user.getMember_score());
			
			if(user1.getMember_score() >= 10000 & user1.getMember_score() < 30000){
				user1.setCard_level("һ��ħ��ʦ");
			}else if(user1.getMember_score() >= 30000 & user1.getMember_score()< 50000 ) {
				user1.setCard_level("����ħ��ʦ");
			}else if(user1.getMember_score() >= 50000 & user1.getMember_score() < 70000) {
				user1.setCard_level("����ħ��ʦ");
			}else if(user1.getMember_score() >= 70000 & user1.getMember_score() < 100000) {
				user1.setCard_level("�ļ�ħ��ʦ");
			}else if(user1.getMember_score() >= 100000 & user1.getMember_score() < 120000) {
				user1.setCard_level("�弶ħ��ʦ");
			}else if(user1.getMember_score() >= 120000) {
				user1.setCard_level("����ħ��ʦ");
			}
			
			userDao.modifyUser(user1);
			
		}
		
		return mapping.findForward("success");
	}

}
