require '../lib/game'
require '../lib/player'

player = Player.new('x')
game = Game.new
puts "#{game} is an instance of player class"
puts "#{game.display_board} is an empty board"

puts "#{game.over?} should be false"

game.mark_board(5, player)
puts "#{game.display_board} should have an x in the middle"

game.mark_board(4, player)
game.mark_board(6, player)
puts "#{game.over?} should be true"

puts "#{game.winner} should be x"

game = Game.new
player_o = Player.new('o')

[1, 6, 7, 8].each {|spot| game.mark_board(spot, player_o)}
[2, 3, 4, 5, 9].each {|spot| game.mark_board(spot, player)}

puts "#{game.winner} should be 'cat's game'"


