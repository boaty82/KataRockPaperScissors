package uk.co.bty;

public class Game {
    public String play(String player1Move, String player2Move) {
        if (player1Move.equals(player2Move))
            return "draw";

        if ("rock".equals(player1Move) && "scissors".equals(player2Move))
            return "win";

        if ("scissors".equals(player1Move) && "paper".equals(player2Move))
            return "win";

        if ("paper".equals(player1Move) && "rock".equals(player2Move))
            return "win";

        return "lose";
    }
}
