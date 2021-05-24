require "./players"
require "./question"
#-------start game--------
puts "Welcome to Ruby Math Game! This game requires two players."
puts "Enter Player 1's name"
print '> '
player1_name = gets.chomp #gets player's name
puts "Enter Player 2's name"
print '> '
player2_name = gets.chomp #gets player's name

player1 = Players.new(player1_name) #initalizes player
player2 = Players.new(player2_name)
count = 0   

#------new round--------
while (player1.alive? && player2.alive?) do #ensures count is not zero
  player = (count == 0) ? player1 : player2 
  puts '----- NEW TURN -----'
  question = Questions.new
  puts "#{player.name}: #{question.display}"
  print '> '
  answer = gets.chomp
  if answer.to_i == question.answer
    puts 'Correct!.'
    puts "#{player1.name}: #{player1.lives}/3 ~VS~ #{player2.name}: #{player2.lives}/3"       
  else 
    player.lives -= 1
    puts 'Unfortunatly that is incorrect'
    puts "#{player1.name}: #{player1.lives}/3 ~VS~ #{player2.name}: #{player2.lives}/3"
  end
  count = (count + 1) % 2
end 

#-------end game--------
if (player1.lives == 0) #checks if it is player 1 or player 2 that lost
  puts "#{player2.name} wins and has a score of #{player2.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Play again soon!'
else
  puts "#{player1.name} wins and has a score of #{player1.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Play again soon!' 
end 