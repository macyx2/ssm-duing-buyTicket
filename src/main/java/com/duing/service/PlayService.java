package com.duing.service;

import com.duing.vo.FilmDetailVo;
import com.duing.vo.FilmVo;
import com.duing.vo.PlayDetailVo;
import com.duing.vo.PlayVo;

import java.util.List;

public interface PlayService {

   List<PlayVo> findPlayById(String filmId);

   PlayDetailVo getDetailById(String playId);
}
