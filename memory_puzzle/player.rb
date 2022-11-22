class Player

    # def initialize
    #     @player = player
    # end

    def get_first_guess
        # @get_moves
        puts "Make your first guess"
        first_guess = gets.chomp.split(" ").map(&:to_i)
    end

    def get_second_guess
        puts "Make your second guess"
        second_guess = gets.chomp.split(" ").map(&:to_i)
    end
end