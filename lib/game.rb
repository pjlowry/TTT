require '../lib/player'

class Game
  def initialize
    @board = {}
    (1..9).each {|number| @board[number] = number.to_s}
  end

  def display_board
    @board[1] + ' ' + @board[2] + ' ' + @board[3] + "\n" + @board[4] + ' ' + @board[5] + ' ' + @board[6] + "\n" + @board[7] + ' ' + @board[8] + ' ' + @board[9] + "\n"
  end

  def mark_board(spot, player)
    @board[spot] = player.name
  end

  def over?
    @board[4] == @board[5] && @board[4] == @board[6]
  end

  def winner
    @board[4]
  end
end