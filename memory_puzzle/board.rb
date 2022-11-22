require_relative "deck"
class Board
    attr_accessor :grid
    def initialize
        @grid = Array.new(4){Array.new(3)}
        @cards = Deck.new
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end
    
    def [](pos, value)
        row, col = pos
        @grid[row][col] = value
    end

    def print_board 
        @grid.each_with_index do |row, i|
            line = []
            row.each_with_index do |ele, j|
                if @faceup
                    line << ele.value 
                else 
                    line << "_"
                end 
            end
            puts line.join(" ")
        end

    end

    def place_cards
        @cards.deck.shuffle!
        @grid.map! do |row|
            row.map do |pos|
                pos = @cards.deck.shift
            end
        end
        @grid
    end

end