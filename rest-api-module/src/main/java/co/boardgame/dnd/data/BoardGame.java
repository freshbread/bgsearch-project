package co.boardgame.dnd.data;

import lombok.Data;
import java.util.Date;

@Data
public class BoardGame {

    int id;
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