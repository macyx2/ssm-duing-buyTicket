package com.duing.service;

import com.duing.dao.FilmDao;
import com.duing.entity.Film;
import com.duing.vo.FilmVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FilmServiceImpl implements FilmService{

    @Autowired
    private FilmDao filmDao;

    @Override
    public List<FilmVo> selectAll() {
        List<Film> films = filmDao.getList();
        System.out.println("数据库中影片的数量" + films.size());

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
}
