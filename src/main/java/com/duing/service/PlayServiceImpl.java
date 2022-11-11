package com.duing.service;

import com.duing.dao.PlayMapper;
import com.duing.entity.Play;
import com.duing.vo.PlayVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlayServiceImpl implements PlayService{

    @Autowired
    private PlayMapper playMapper;

    @Override
    public List<PlayVo> findPlayById(String filmId) {
        List<Play> playList = playMapper.selectByFilmId(filmId);
        List<PlayVo> result = new ArrayList<>();
        for (Play play:playList){
            PlayVo vo = new PlayVo();
            vo.setFilmId(play.getFilmId());
            vo.setFilmName(play.getFilmName());
            vo.setRoomId(play.getRoomId());
            vo.setRoomName(play.getRoomName());
            vo.setPlayTime(play.getPlayTime());
            vo.setPlayId(play.getPlayId());
            vo.setLanType(play.getLanType());
            vo.setPrice(play.getPrice());
            result.add(vo);
        }
        return result;
    }
}
