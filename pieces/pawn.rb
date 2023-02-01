require_relative 'piece'

class Pawn < Piece
  #include Slideable

  def symbol
    '♙'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a pawn can move
    
  end
end