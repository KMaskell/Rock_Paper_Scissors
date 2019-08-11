class Game
  attr_reader :computer_move

  def computer_move
    moves = { 1 => "rock",
      2 => "paper",
      3 => "scissors" }
    @computer_move = moves[rand(1..3)]
  end

  def determine_winner(player_move, computer_move)
    if (player_move == "rock") && (computer_move == "scissors")
      "You win!"
    elsif (player_move == "paper") && (computer_move == "rock")
      "You win!"
    elsif (player_move == "scissors") && (computer_move == "paper")
      "You win"
    elsif (player_move == "scissors") && (computer_move == "rock")
      "You win"
    elsif (computer_move == "rock") && (player_move == "scissors")
      "You win"
    elsif (computer_move == "paper") && (player_move == "rock")
      "Computer wins"
    elsif (computer_move == "scissors") && (player_move == "paper")
      "Computer wins"
    elsif (computer_move == "scissors") && (player_move == "rock")
      "You win"
    elsif (player_move == computer_move)
      "It's a draw"
    end
  end
end