package com.productCrudApp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.productCrudApp.dao.ProductDao;
import com.productCrudApp.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home(Model m) {
		
		List<Product> products = productDao.getAll();
		m.addAttribute("products",products);
		return "index";
	}
	
	@RequestMapping("/product_form")
	public String addProduct() {
		return "add_product_form";
	}
	
	@RequestMapping(path="/handle-product",method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product) {
		
		System.out.println(product);
		productDao.createproduct(product);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("index");
		return redirectView;
	}
	
	@RequestMapping(path="/delete/{id}")
	public RedirectView delete(@PathVariable("id") int id,HttpServletRequest request) {
		
		this.productDao.delete(id);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/index");
		return redirectView;
	}
	
	@RequestMapping(path="/update/{id}")
	public String update(@PathVariable("id") int id,Model model,HttpServletRequest request) {
		
		Product product = this.productDao.getSingle(id);
		model.addAttribute(product);
		model.addAttribute(request);
		
		return "update_form";
	}
}
