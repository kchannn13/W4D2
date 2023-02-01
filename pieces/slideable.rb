module Slideable

# HORIZONTAL_DIRS stores an array of horizontal directions
  # when a piece moves in a given direction, its row and/or 
  # its column should increment by some value
  # ex: A piece starts at position [1, 2] and it moves horizontally 
  # to the right
    # its position changes to [1,3]
    # the row increases by 0 and the column increases by 1
  HORIZONTAL_DIRS = [
    [-1,0], # left
    [1,0], # right
    [0,-1], # up (vertical)
    [0,1], # down (vertical)
  ].freeze # freeze makes it not possible to change an object

  DIAGONAL_DIRS = [
    [-1,-1], # up + left
    [-1,1], # up + right
    [1,-1], # down + left
    [1,1], # down + right
  ].freeze

  def horizontal_dirs 
    #getter for HORIZONTAL_DIRS
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    # getter for DIAGONAL_DIRS
    DIAGONAL_DIRS
  end

  def moves #return all the moves for a particular piece
    # create array to collect moves

    # iterate over each directions in which slidable piece can move
    # use Piece subclasses's mov_dirs
    # given move_dirs see what the valid moves are
    # checks if the cell is empty and checks what color a figure is in this cell 

    # return the final array of moves (containing all possible moves in all directions)
    move_dirs
    # all_possible_cells = []
    all_possible_cells = []
      move_dirs.each do |direction|
        #if self.pod[0] < 0 && self[0] >
        (1..7).each do |n|
          new_pos = [self.pos[0] + n * direction[0], self.pos[1] + n * direction[1]]
          if new_pos[0] > 7 || new_pos[0] < 0 || new_pos[1] > 7 || new_pos[1] < 0
            break
            # (board[new_pos].is_a?(NullPiece) || board[new_pos].color != board[pos].color)
          end
          if (board[new_pos].is_a?(NullPiece))
            all_possible_cells << new_pos 
          else
            if board[new_pos].color == board[pos].color
              break
            else
              all_possible_cells << new_pos
              break 
            end
          end
        end
      end
      all_possible_cells
    # return the final moves array
  end

  private
  def move_dirs
    # subclass implements this
    raise NotImplementedError # this only executes if 
  end


  # this helper method is only responsible for collecting all moves 
  # in a given direction
  # the given direction is represented by two args, 
  # the combination of a dx and dy
  def grow_unblocked_moves_in_dir(dx, dy)
    # create an array to collect moves

    # get the piece's current row and current column

    # row_current = self.pos[0]
    # col_current = self.pos[1]

    # in a loop:
      # continually increment the piece's current row and 
      # current column to generate a new position
      # stop looping if the new position is invalid (not on the board); 
      # the piece can't move in this direction
      # if the new position is empty, the piece can move here, 
      # so add the new position to the moves array
      # if the new position is occupied with a 
      # piece of the opposite color, the piece can move here 
      # (to capture the opposing piece), so add the new position to the moves array
        # but, the piece cannot continue to move past this piece, so stop looping
      # if the new position is occupied with a piece of the same color, stop looping
      all_possible_cells = []
      move_dirs.each do |direction|
        #if self.pod[0] < 0 && self[0] >
        (1..7).each do |n|
          new_pos = [self.pos[0] + n * direction[0], self.pos[1] + n * direction[1]]
          if new_pos[0] > 7 || new_pos[0] < 0 || new_pos[1] > 7 || new_pos[1] < 0
            break
            # (board[new_pos].is_a?(NullPiece) || board[new_pos].color != board[pos].color)
          end
          if (board[new_pos].is_a?(NullPiece))
            all_possible_cells << new_pos 
          else
            if board[new_pos].color == board[pos].color
              break
            else
              all_possible_cells << new_pos
              break 
            end
          end
        end
      end
      all_possible_cells
    # return the final moves array
  end
end