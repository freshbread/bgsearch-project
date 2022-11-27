package com.github.freshbread.data;

import lombok.Data;
import java.util.Date;

@Data
public class BoardGame {

    int id;
    String title;
    String title_eng;
    String pweight;
    String playtime;
    String player;
    String recommend;
    String link;
    Date regdate;
    Date uptdate;
    String isdelete;
}