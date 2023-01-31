class Board
    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        row = [0,1,6,7]
        row.each do |r|
            (0..7).each do |c|
                @rows[[r,c]] = Piece.new(value)
            end
        end
        (2..5).each do |r|
            (0..7).each do |c|
                @rows[[r,c]] = NullPiece.new(value)
            end
        end

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
        if @rows[start_pos] == NullPiece || @rows[end_pos] != NullPiece
            raise "Ivalid move"
        end


    end
end