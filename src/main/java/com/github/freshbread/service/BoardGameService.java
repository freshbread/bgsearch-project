package com.github.freshbread.service;

import com.github.freshbread.data.BoardGame;
import com.github.freshbread.mapper.BoardGameMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BoardGameService {

    @Autowired
    BoardGameMapper bgMapper;

    /**
     * 보드게임 리스트 가져오기 (DB select)
     * @param page
     * @param len
     * @return returnList
     * */
    public List<BoardGame> selectBoardGameListToDB(int page, int len) {

        List<BoardGame> returnList = new ArrayList<>();
        List<BoardGame> list = bgMapper.selectBoardGameList();

        int start = 1 + ((page - 1) * len);
        int end = page * len;

        for (int cnt = (start - 1); cnt < end; cnt++) {
            if (cnt < list.size()) {
                BoardGame bg = list.get(cnt);
                returnList.add(bg);
            }
        }

        return returnList;
    }
}
