package com.github.freshbread.controller;

import com.github.freshbread.data.BoardGame;
import com.github.freshbread.service.BoardGameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class BoardGameController {

    @Autowired
    BoardGameService bgService;

    @RequestMapping(value = "/boardgame/add", method = RequestMethod.POST)
    public String boardGameAdd(BoardGame boardGame, Model model) {
        int status = bgService.insertBoardGame(boardGame);

        return "redirect:/list";
    }

    @RequestMapping(value = "/boardgame/update", method = RequestMethod.POST)
    public String boardGameUpdate(BoardGame boardGame, Model model) {
        int status = bgService.updateBoardGame(boardGame);

        return "redirect:/list";
    }

    @RequestMapping(value = "/boardgame/delete", method = RequestMethod.POST)
    public String boardGameDelete(@RequestParam int id) {
        int status = bgService.deleteBoardGame(id);

        return "redirect:/list";
    }
}
