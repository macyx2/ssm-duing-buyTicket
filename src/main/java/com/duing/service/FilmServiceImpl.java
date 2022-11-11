package com.duing.service;

import com.duing.dao.FilmMapper;
import com.duing.entity.Film;
import com.duing.vo.FilmDetailVo;
import com.duing.vo.FilmVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FilmServiceImpl implements FilmService{

    @Autowired
    private FilmMapper filmMapper;

    @Override
    public List<FilmVo> selectAll() {
        List<Film> films = filmMapper.getList();
        System.out.println("数据库中影片数量" + films.size());

        List<FilmVo> result = new ArrayList<>();
        for (Film film : films){
            FilmVo vo = new FilmVo();
            vo.setFilmId(film.getFilm_id());
            vo.setName(film.getName());
            vo.setDirector(film.getDirector());
            vo.setImgPath(film.getImg_path());

            result.add(vo);
        }
        return result;
    }


    @Override
    public FilmDetailVo findFilmById(String filmId){
        Film film = filmMapper.getFilmById(filmId);
        FilmDetailVo vo = new FilmDetailVo();
        vo.setFilmId(filmId);
        vo.setName(film.getName());
        vo.setDirector(film.getDirector());
        vo.setPlayer(film.getPlayer());
        vo.setType(film.getType());
        vo.setCountry(film.getCountry());
        vo.setLength(film.getLength());
        vo.setSynopsis(film.getSynopsis());
        vo.setPlayTime(film.getPlay_time());
        vo.setImgPath(film.getImg_path());
        return vo;
    }

}
