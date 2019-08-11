answer1 = player_one
answer2 = computer

if (answer1 == "rock") && (answer2 == "scissors")
  puts "Player wins"
elsif (answer1 == "paper") && (answer2 == "rock")
  puts "Player wins"
elsif (answer1 == "scissors") && (answer2 == "paper")
  puts "Player wins"
elsif (answer1 == "scissors") && (answer2 == "rock")
  puts "computer wins"
elsif (answer2 == "rock") && (answer1 == "scissors")
  puts "Player wins"
elsif (answer2 == "paper") && (answer1 == "rock")
  puts "computerwins"
elsif (answer2 == "scissors") && (answer1 == "paper")
  puts "computer wins"
elsif (answer2 == "scissors") && (answer1 == "rock")
  puts "Player wins"
elsif (answer1 == answer2)
  puts "It's a draw"
end