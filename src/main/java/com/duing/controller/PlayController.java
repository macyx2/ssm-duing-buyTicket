package com.duing.controller;

import com.duing.service.PlayService;
import com.duing.vo.PlayDetailVo;
import com.duing.vo.PlayVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
public class PlayController {

    @Autowired
    private PlayService playService;

    @RequestMapping("/play")
    public String getPlays(@RequestParam String filmId, Model model) {
        List<PlayVo> playVos = playService.findPlayById(filmId);
        model.addAttribute("playVos",playVos);
        return "play";
    }

    @RequestMapping("/seat")
    @ResponseBody
    public String showSeats(@RequestParam String playId,Model model){
        PlayDetailVo detailVo = playService.getDetailById(playId);
        model.addAttribute("detailVo",detailVo);
        return "seat";
    }

}
