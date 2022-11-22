require_relative "player"
require_relative "board"
require_relative "card"
require "byebug"
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
           row, col = first_card
           
            @board.grid[row][col].reveal
            second_card = @player.get_second_guess
            @board.grid[second_card].reveal
            sleep 2
            unless @board.grid[first_card].value == @board.grid[second_card].value
                @board.grid[first_card].hide 
                @board.grid[second_card].hide
            end
            if game_over?
                puts "woo hoo you won!"
                return true
            end
        end
    end


end