package com.codegym.cms.service;

import com.codegym.cms.entity.Blog;
import com.codegym.cms.exception.ResourceNotFoundException;
import com.codegym.cms.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogRepository blogRepository;


    @Override
    @Transactional
    public List<Blog> getBlogs() {
        return blogRepository.findAll();
    }

    @Override
    @Transactional
    public void saveBlog(Blog theBlog) {
        blogRepository.save(theBlog);
    }

    @Override
    @Transactional
    public Blog getBlog(int theId) throws ResourceNotFoundException {
        return blogRepository.findById(theId).orElseThrow(
                () -> new ResourceNotFoundException(theId));
    }

    @Override
    @Transactional
    public void deleteBlog(int theId) throws ResourceNotFoundException {
        blogRepository.deleteById(theId);
    }
}
