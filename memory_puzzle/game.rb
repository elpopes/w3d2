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
            card_1 = @board.grid[row][col]
            card_1.reveal
            @board.print_board
            second_card = @player.get_second_guess
            row, col = second_card
            card_2 = @board.grid[row][col]
            card_2.reveal
            @board.print_board
            sleep 2
            unless card_1.value == card_2.value
                card_1.hide 
                card_2.hide
            end

            if @board.game_over?
                @board.print_board
                puts "woo hoo you won!"
                return true
            end
        end



    end


end