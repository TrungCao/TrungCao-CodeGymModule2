package com.codegym.cms.service;

import com.codegym.cms.entity.Province;
import com.codegym.cms.repository.ProvinceRepository;
import com.codegym.cms.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProvinceServiceImpl implements ProvinceService {

    @Autowired private ProvinceRepository provinceRepository;
    @Override
    public Iterable<Province> getProvinces() {
        return provinceRepository.findAll();
    }

    @Override
    public void saveProvince(Province province) {
        provinceRepository.save(province);
    }

    @Override
    public void deleteProvinces(Long id) {
        provinceRepository.deleteById(id);
    }

    @Override
    public Province getProvince(Long id) throws  ResourceNotFoundException{
        return provinceRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException(id));
    }
}
