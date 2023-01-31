class Board
    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
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
        if @rows[start_pos]
    end
end