#rock paper scissors
#player chooses rock/paper/scissors

CHOICES = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors'}
puts "Ready to play rock, paper, scissors?"

def display_results(winner_results)
  case winner_results
  when 'p'
    puts "Paper covers rock."
  when 'r'
    puts "Rock breaks scissors."
  when 's'
    puts "Scissors cuts paper."
  end
end

loop do 
  begin
    puts "Pick your poison. Type P/S/R to play. (P = paper, S = scissors, R = Rock)"
    player_move = gets.chomp.downcase
  end until CHOICES.keys.include?(player_move)
    puts "Great choice."

  computer_move = CHOICES.keys.sample
  
  if player_move == computer_move
    puts "You guys tied. No winner."
  elsif (player_move == 'p' && computer_move == 'r') || (player_move == 'r' && computer_move == 's') || (player_move == 's' && computer_move == 'p')
    display_results(player_move)
    puts "and you won, winner winner!"
  else
    display_results(computer_move)
    puts "You lost sucka."
  end

  puts "Play again? (Y/N)"
  break if gets.chomp.downcase != 'y'
end

puts "Thanks for playing."


