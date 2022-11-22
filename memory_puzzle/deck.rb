require_relative "card"

class Deck
    attr_accessor :deck
    def initialize
        @deck = deck_maker
    end
end

def deck_maker 
    cards = ["A","B","C","D","E","F"] + ["A","B","C","D","E","F"]
    deck = []
    cards.each_with_index do |card, i|
        i = i.to_s
        i = Card.new(card)
        deck << i 
    end
    deck
end




