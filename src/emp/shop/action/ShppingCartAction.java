package emp.shop.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.shop.idao.IProductDao;
import emp.shop.model.Product;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ShppingCartAction<ShoopingCartForm> extends DispatchAction {
	
	List<Product> productList1;
	
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//�õ���all_product.jspҳ�洫����product id
		String pid = request.getParameter("product_id");
		
		if(pid != null){
			int product_id=Integer.parseInt(pid);
			ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext-*.xml");
			
			IProductDao productDao = (IProductDao)app.getBean("productDaoProxy");
			Product product = (Product)app.getBean("product");
			
			//��session�еõ�װ�в�Ʒ��List
			productList1=(List)request.getSession().getAttribute("productList1");
			
			//ͬ����Ʒid�����Ʒ��ȫ����Ϣ
			product = productDao.queryProductById(product_id);
			
			//���ò�Ʒ�����
			product.setProduct_hit(product.getProduct_hit()+1);
			productDao.modifyProduct(product);
			
			if(productList1 == null) {
				
				//�����ƷlistΪ�� ��newһ��ArrayList �����ò�Ʒװ��ȥ
				productList1 = new ArrayList();
				productList1.add(product);
				
			} else {
				
				//�����Ʒlist��Ϊ�� ���ж��Ƿ����ظ��� ��������ظ����� ��ӵ�list��
				
				for(Iterator it = productList1.iterator();it.hasNext();){
					Product productExist = (Product)it.next();
					int productExist_id = productExist.getProduct_id();
					int productNew_id = product.getProduct_id();
					if(productExist_id == productNew_id) {
						return mapping.findForward("add_success");
					}
				}
				productList1.add(product);
			}
			
			request.getSession().setAttribute("productList1", productList1);
		
		}
		
		return mapping.findForward("add_success");
	}	
}
