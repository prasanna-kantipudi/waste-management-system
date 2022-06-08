package com.manoj.repos;

import org.springframework.data.repository.CrudRepository;

import com.manoj.beans.Product;

public interface ProdRepo extends CrudRepository<Product,Integer>{
	public Product findProductByProdid(int id);
}
