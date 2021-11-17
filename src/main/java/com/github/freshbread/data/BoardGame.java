package com.github.freshbread.data;

import lombok.Data;
import java.util.Date;

@Data
public class BoardGame {

    String title;
    String title_eng;
    double weight;
    String playtime;
    String player;
    String recommend;
    String link;
    Date regdate;
    String isdelete;
}