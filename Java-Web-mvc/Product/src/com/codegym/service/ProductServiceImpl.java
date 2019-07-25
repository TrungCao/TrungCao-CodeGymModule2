package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer,Product> products;

    static {
        products.put(1,new Product(1,"Laptop","dell",10,20000));
        products.put(2,new Product(2,"Televison","SamSung",3,30000));
        products.put(3,new Product(3,"Phone","Apple",70,50000));
        products.put(4,new Product(4,"Car","Rollroys",2,100000));
        products.put(5,new Product(5,"Moto","Honda",3,60000));
        products.put(6,new Product(6,"Book","VN",10,5000));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
