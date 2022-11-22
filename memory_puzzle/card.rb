class Card
  
    def initialize(card)

        @value = card
        @faceup = false

    end
    attr_reader :value, :faceup

    def reveal 
        @faceup = true
    end

    def hide
        @faceup = false
    end

end

