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
     * 보드게임 목록 호출
     * @return returnList
     * */
    public List<BoardGame> selectBoardGameList() {
        List<BoardGame> list = bgMapper.selectBoardGameList();

        return list;
    }

    /**
     * 보드게임 내용 호출
     * @Param id 보드게임 pk id
     * @return returnList
     * */
    public BoardGame selectBoardGame(int id) {
        BoardGame boardGame = bgMapper.selectBoardGame(id);

        return boardGame;
    }

    /**
     * 보드게임 등록
     * @Param boardGame 보드게임 등록 내용
     * @return status
     * */
    public int insertBoardGame(BoardGame boardGame) {
        int status = bgMapper.insertBoardGame(boardGame);

        return status;
    }

    /**
     * 보드게임 수정
     * @Param boardGame 보드게임 등록 내용
     * @return status
     * */
    public int updateBoardGame(BoardGame boardGame) {
        int status = bgMapper.updateBoardGame(boardGame);

        return status;
    }

    /**
     * 보드게임 삭제
     * @Param id 보드게임 pk id
     * @return status
     * */
    public int deleteBoardGame(int id) {
        int status = bgMapper.deleteBoardGame(id);

        return status;
    }
}
