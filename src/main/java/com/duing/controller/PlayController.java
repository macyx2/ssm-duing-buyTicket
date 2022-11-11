package com.duing.controller;

import com.duing.service.PlayService;
import com.duing.vo.PlayVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class PlayController {

    @Autowired
    private PlayService playService;

    @RequestMapping("/play")
    @ResponseBody
    public List<PlayVo> getPlays(@RequestParam String filmId) {
        List<PlayVo> result = playService.findPlayById(filmId);
        return result;
    }
}
