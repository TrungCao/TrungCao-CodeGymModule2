package com.codegym.cms.repository;

import com.codegym.cms.entity.Blog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository("blogRepository")
public interface BlogRepository extends JpaRepository<Blog, Integer> {

}
