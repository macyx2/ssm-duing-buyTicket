package com.duing.controller;

import com.duing.service.FilmService;
import com.duing.vo.FilmVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class FilmController {

    @Autowired
    private FilmService filmService;

    @RequestMapping("/filmList")
    @ResponseBody
    public List<FilmVo> selectAll(){
        List<FilmVo> filmVos = filmService.selectAll();
        return filmVos;
    }
}
