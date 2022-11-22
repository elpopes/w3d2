class Game
    attr_reader : board
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
        end
    end

    
end