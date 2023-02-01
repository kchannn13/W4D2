require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def symbol
    'U+2657'.colorize(color)
  end

  protected

  def move_dirs
    #return directions how a bishop can move
  end

end
