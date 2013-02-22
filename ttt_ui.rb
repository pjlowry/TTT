require './lib/player'
require './lib/game'


puts "Welcome to Tic Tac Toe"

players = [Player.new('x'), Player.new('o')]

game = Game.new


until game.over?
  players.each do |player|
    puts game.display_board
    puts "#{player.name}, your turn."

    puts "Where would you like to mark?"
    puts "Enter the number you want to select:"
    spot = gets.chomp.to_i
    game.mark_board(spot, player)

  end
end
