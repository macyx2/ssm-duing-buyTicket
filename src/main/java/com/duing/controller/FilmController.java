package com.duing.controller;

import com.duing.service.FilmService;
import com.duing.vo.FilmDetailVo;
import com.duing.vo.FilmVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping("/home")
    public String home(Model model){
        System.out.println("接收首页请求");
        List<FilmVo> filmVoList = filmService.selectAll();
        model.addAttribute("filmVoList",filmVoList);
        return "home";
    }

    //通过@RequestParam接收请求参数
    @RequestMapping("/filmInfo")
    public String filmInfo(@RequestParam String filmId, Model model){
        FilmDetailVo detailVo = filmService.findFilmById(filmId);
        model.addAttribute("detailVo",detailVo);
        return "detail";
    }
}
