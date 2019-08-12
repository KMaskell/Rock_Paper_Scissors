class Computer
  def move
    moves = { 1 => "rock",
          2 => "paper",
          3 => "scissors" }
    @move = moves[rand(1..3)]
  end
end