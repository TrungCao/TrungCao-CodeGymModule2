package com.codegym.model;

public class Product {
    private int id;
    private String name;
    private String vendor;
    private int desciption;
    private int price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVendor() {
        return vendor;
    }

    public void setVendor(String vendor) {
        this.vendor = vendor;
    }

    public int getDesciption() {
        return desciption;
    }

    public void setDesciption(int desciption) {
        this.desciption = desciption;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Product(int id, String name, String vendor, int desciption, int price) {
        this.id = id;
        this.name = name;
        this.vendor = vendor;
        this.desciption = desciption;
        this.price = price;
    }

    public Product() {
    }
}
