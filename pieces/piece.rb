require_relative 'board'
class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos

    end

    # def to_s
    # end
end

class NullPiece < Piece
    def initialize(val)
        @val = val
    end
end