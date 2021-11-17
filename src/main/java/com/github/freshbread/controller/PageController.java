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

        int page = 1;
        int len = 10;

        String pageStr = httpServletRequest.getParameter("page");
        try {
            page = Integer.parseInt(pageStr);
        } catch (NumberFormatException e) {
            page = 1;
        }

        model.addAttribute("list", bgService.selectBoardGameListToDB(page, len));

        return "index";
    }
}
