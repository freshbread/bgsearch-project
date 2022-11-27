package com.github.freshbread.controller;

import com.github.freshbread.service.BoardGameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PageController {

    @Autowired
    BoardGameService bgService;

    @RequestMapping("/")
    public String index(HttpServletRequest httpServletRequest, Model model) {
        return "redirect:list";
    }

    @RequestMapping("/list")
    public String list(HttpServletRequest httpServletRequest, Model model) {
        String keyword = httpServletRequest.getParameter("id");
        model.addAttribute("list", bgService.selectBoardGameList());

        return "list";
    }

    @RequestMapping("/write")
    public String write(HttpServletRequest httpServletRequest, Model model) {
        String idStr = httpServletRequest.getParameter("id");
        if (idStr != null && !"".equals(idStr)) {
            int id = Integer.parseInt(idStr);
            model.addAttribute("boardGame", bgService.selectBoardGame(id));
        }

        return "write";
    }

    @RequestMapping("/useradd")
    public String useradd(HttpServletRequest httpServletRequest, Model model) {

        return "user/add";
    }
}
