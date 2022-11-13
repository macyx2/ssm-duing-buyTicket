package com.duing.service;

import com.duing.dao.PlayMapper;
import com.duing.dao.RoomMapper;
import com.duing.entity.Play;
import com.duing.entity.Room;
import com.duing.vo.PlayDetailVo;
import com.duing.vo.PlayVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class PlayServiceImpl implements PlayService{

    @Autowired
    private PlayMapper playMapper;

    @Autowired
    private RoomMapper roomMapper;

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

            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            //从前端或者自己模拟一个日期格式，转为String即可
            String dateStr = format.format(play.getPlayTime());

            vo.setPlayTime(dateStr);
            vo.setPlayId(play.getPlayId());
            vo.setLanType(play.getLanType());
            vo.setPrice(play.getPrice());
            result.add(vo);
        }
        return result;
    }

    @Override
    public PlayDetailVo getDetailById(String playId) {

        Play play = playMapper.selectByPlayId(playId);
        PlayDetailVo detailVo = new PlayDetailVo();

        //对属性名相同的对象 进行拷贝
        //第一个参数是source 源对象 第二个参数是target 目标对象
        //其实拷贝的是两者的交集 将所有同名属性赋值进来
        //低层使用的是反射 调用get和set方法
        BeanUtils.copyProperties(play,detailVo);

        //类型不同的属性值应该设置不同的属性名 然后单独处理
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateStr = format.format(play.getPlayTime());
        detailVo.setPlayTimeStr(dateStr);

        Room room = roomMapper.selectById(play.getRoomId());
        //可以加非空判断 但原则上 先有放映厅 才有拍片信息
        detailVo.setSeat(room.getSituation());
        return detailVo;
    }

}
