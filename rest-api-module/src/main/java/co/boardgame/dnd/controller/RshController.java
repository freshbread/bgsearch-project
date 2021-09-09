package co.boardgame.dnd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RshController {

    @RequestMapping("/rsh/")
    public String index(HttpServletRequest httpServletRequest, Model model) {

        return "rsh/index";
    }

    @RequestMapping("/rsh/detail")
    public String detail3(HttpServletRequest httpServletRequest, Model model) {

        return "rsh/detail";
    }
}
