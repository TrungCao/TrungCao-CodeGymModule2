package com.codegym.cms.controller;

import com.codegym.cms.entity.Blog;
import com.codegym.cms.exception.ResourceNotFoundException;
import com.codegym.cms.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @GetMapping("/list")
    public String listBlogs(Model theModel) {
        List<Blog> theBlogs = blogService.getBlogs();
        theModel.addAttribute("blogs", theBlogs);
        return "list-blog";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        Blog theBlogs = new Blog();
        theModel.addAttribute("blog", theBlogs);
        return "blog-form";
    }

    @PostMapping("/saveBlog")
    public String saveBlog(@ModelAttribute("blog") Blog theBlog) {
        blogService.saveBlog(theBlog);
        return "redirect:/blog/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("blogId") int theId,
                                    Model theModel) throws ResourceNotFoundException {
        Blog theBlog = blogService.getBlog(theId);
        theModel.addAttribute("blog", theBlog);
        return "blog-form";
    }

    @GetMapping("/delete")
    public String deleteBlog(@RequestParam("blogId") int theId) throws ResourceNotFoundException {
        blogService.deleteBlog(theId);
        return "redirect:/blog/list";
    }

}
