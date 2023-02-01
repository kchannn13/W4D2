require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
  include Slideable

  def symbol
    ''.colorize(color)
  end

  protected

  def move_dirs
    #return directions how a bishop can move
    horizontal_dir + diagonal_dir
  end

end
