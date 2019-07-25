package com.codegym.service;

import com.codegym.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void save(Product product);

    Product findById(int idProduct);

    void update(int idProduct,Product product);

    void remove(int idProduct);
}
