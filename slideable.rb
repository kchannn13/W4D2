module Slideable

  HORIZONTAL_DIRS = [
    [:dx,:dy], # left
    [:dx,:dy], # right
    [:dx,:dy], # up
    [:dx,:dy], # down
  ].freeze # freeze makes it not possible to change an object

  DIAGONAL_DIRS = [
    [:dx,:dy], # up + left
    [:dx,:dy], # up + right
    [:dx,:dy], # down + left
    [:dx,:dy], # down + right
  ].freeze

  def horizontal_dirs 
    #getter for horiz directions
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves #return all the moves for a particular piece
    # create array to collect moves

    # iterate over each directions in which slidable piece can move
    # use Piece subclasses's mov_dirs
    # given move_dirs see what the valid moves are
    # checks if the cell is empty and checks what color a figure is in this cell 
    move_dirs
  end

  private
  def move_dirs
    raise NotImplementError
  end

end