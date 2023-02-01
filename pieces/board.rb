require_relative "piece"
#require_relative "null"

class Board
    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        populate
    end

    def populate
        # populate null instances
        (2..5).each do |r|
            (0..7).each do |c|
                @rows[r][c] = NullPiece.instance
            end
        end

        # populate pawns
        (0..7).each do |c|
            @rows[1][c] = Pawn.new(:black, self, [1,c])
        end

        (0..7).each do |c|
            @rows[6][c] = Pawn.new(:white, self, [6,c])
        end

        # populate rooks
        @rows[7][0] = Rook.new(:white, self, [7,0])
        @rows[7][7] = Rook.new(:white, self, [7,7])

        @rows[0][0] = Rook.new(:black, self, [0,0])
        @rows[0][7] = Rook.new(:black, self, [0,7])

        # populate bishops
        @rows[7][2] = Bishop.new(:white, self, [7,2])
        @rows[7][5] = Bishop.new(:white, self, [7,5])

        @rows[0][2] = Bishop.new(:black, self, [0,2])
        @rows[0][5] = Bishop.new(:black, self, [0,5])

        # populate knights
        @rows[7][1] = Knight.new(:white, self, [7,1])
        @rows[7][6] = Knight.new(:white, self, [7,6])

        @rows[0][1] = Knight.new(:black, self, [0,1])
        @rows[0][6] = Knight.new(:black, self, [0,6])

        # populate queens
        @rows[7][3] = Queen.new(:white, self, [7,3])
        @rows[0][3] = Queen.new(:black, self, [0,3])

        # populate kings
        @rows[7][4] = King.new(:white, self, [7,4])
        @rows[0][4] = King.new(:black, self, [0,4])

    end

    def [](pos)
        a, b = pos
        return @rows[a][b]
    end

    def []=(pos, val)
        a, b = pos
        @rows[a][b] = val
    end

    def move_piece(start_pos, end_pos)
        # if !@rows[start_pos].is_a?(Piece) || !@rows[end_pos].is_a?(NullPiece)
        #     raise "Ivalid move"
        # end
        if !self[start_pos].is_a?(Piece) || !self[end_pos].is_a?(NullPiece)
            raise "Invalid move"
        end
    end

    # def render
    # end

end