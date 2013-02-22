require '../lib/game'

game = Game.new
puts "#{game} is an instance of player class"
puts "#{game.display_board} is an empty board"

puts "#{game.over?} should be false"