package com.github.freshbread.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

import com.github.freshbread.data.BoardGame;

@Mapper
public interface BoardGameMapper {

    List<BoardGame> selectBoardGameList();
}
