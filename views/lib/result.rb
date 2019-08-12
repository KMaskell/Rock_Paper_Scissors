class Result
    def check(player1_move, player2_move)
        if (player_move == "rock") && (computer_move == "scissors")
        @winner = "You win!"
        elsif (player_move == "paper") && (computer_move == "rock")
        @winner = "You win!"
        elsif (player_move == "scissors") && (computer_move == "paper")
        @winner = "You win"
        elsif (player_move == "scissors") && (computer_move == "rock")
        @winner = "You win"
        elsif (computer_move == "rock") && (player_move == "scissors")
        @winner = "You win"
        elsif (computer_move == "paper") && (player_move == "rock")
        @winner = "Computer wins"
        elsif (computer_move == "scissors") && (player_move == "paper")
        @winner = "Computer wins"
        elsif (computer_move == "scissors") && (player_move == "rock")
        @winner "You win"
        elsif (player_move == computer_move)
        @winner = "It's a draw"
        end
    end
end