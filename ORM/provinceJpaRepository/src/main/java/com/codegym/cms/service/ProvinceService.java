package com.codegym.cms.service;

import com.codegym.cms.entity.Province;
import com.codegym.cms.exception.ResourceNotFoundException;

import java.util.List;

public interface ProvinceService {
    public Iterable<Province> getProvinces();

    public void saveProvince(Province province);

    public void deleteProvinces(Long id);

    public Province getProvince(Long id) throws ResourceNotFoundException;

}
