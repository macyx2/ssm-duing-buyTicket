package com.duing.dao;

import com.duing.entity.Play;
import com.duing.vo.PlayDetailVo;

import java.util.List;

public interface PlayMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Play record);

    int insertSelective(Play record);

    Play selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Play record);

    int updateByPrimaryKey(Play record);

    List<Play> selectAll();

    List<Play> selectByFilmId(String filmId);

    Play selectByPlayId(String playId);
}