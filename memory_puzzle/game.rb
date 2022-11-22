require_relative "player"
require_relative "board"
require_relative "card"

class Game
    attr_reader :board
    def initialize
        @board = Board.new
        @player = Player.new
    
    end

    def play_game
        while true
            @board.print_board
           first_card = @player.get_first_guess
            @grid[first_card].reveal
            second_card = @player.get_second_guess
            @grid[second_card].reveal
            sleep 2
            unless @grid[first_card].value == @grid[second_card].value
                @grid[first_card].hide 
                @grid[second_card].hide
            end
            if game_over?
                puts "woo hoo you won!"
                return true
            end
        end
    end

    
end