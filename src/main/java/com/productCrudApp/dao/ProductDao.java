package com.productCrudApp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.productCrudApp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createproduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
     public List<Product> getAll() {
		
	 List<Product> products	=this.hibernateTemplate.loadAll(Product.class);
	 return products;
	}
     
     @Transactional
     public void delete(int pid) {
    	 Product product = this.hibernateTemplate.load(Product.class,pid);
    	 this.hibernateTemplate.delete(product);
     }
     
     public Product getSingle(int pid) {
    	 return this.hibernateTemplate.get(Product.class,pid);
     }

}
