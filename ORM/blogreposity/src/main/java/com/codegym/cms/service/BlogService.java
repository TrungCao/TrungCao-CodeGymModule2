package com.codegym.cms.service;

import com.codegym.cms.entity.Blog;
import com.codegym.cms.exception.ResourceNotFoundException;

import java.util.List;


public interface BlogService {
    public List<Blog> getBlogs();

    public void saveBlog(Blog theBlog);

    public Blog getBlog(int theId) throws ResourceNotFoundException;

    public void deleteBlog(int theId) throws ResourceNotFoundException;
}
