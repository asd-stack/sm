package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Windows10
 * @description 第一次使用mvc
 * @create 2019/6/5
 * @since 1.0.0
 */
@Controller
@RequestMapping("/hello")
public class HelloControler{
    @RequestMapping("/index")
        public String say(Model model,SmbmsUserDTO smbmsUserDTO){
        model.addAttribute("info","Hello Spring MVC");
        model.addAttribute("info1",smbmsUserDTO);
        return "index";
    }
    @RequestMapping("/checkbox")
    public String check(Model model){
        SmbmsUserDTO smbmsUserDTO=new SmbmsUserDTO();
        smbmsUserDTO.setIsok(true);
        String []test1={"阿毛","卷毛"};
        smbmsUserDTO.setTest(test1);
        List<User> list1=new ArrayList<User>();
        User user=new User();
        user.setId(1);
        User user2=new User();
        user2.setId(2);
        User user3=new User();
        user3.setId(3);
        list1.add(user);
        list1.add(user2);
        list1.add(user3);
        smbmsUserDTO.setList(list1);
        model.addAttribute("info2",smbmsUserDTO);
        return "add";
    }

    @RequestMapping("/u/{id}")
    public String method(@PathVariable("id") Integer id, Model model){
        SmbmsUserDTO smbmsUserDTO=new SmbmsUserDTO();
        smbmsUserDTO.setId(id);
        smbmsUserDTO.setUserName("卷毛");
        smbmsUserDTO.setUserPassword("123123123");
        model.addAttribute("course",smbmsUserDTO);
        return "/index";
    }
}
