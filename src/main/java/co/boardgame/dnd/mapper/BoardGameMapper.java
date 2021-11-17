package co.boardgame.dnd.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

import co.boardgame.dnd.data.BoardGame;

@Mapper
public interface BoardGameMapper {

    List<BoardGame> selectBoardGameList();
}
