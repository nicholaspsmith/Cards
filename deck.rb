class Deck
  attr_accessor :cards
  def initialize
    @suits = ['diamonds', 'clubs', 'hearts', 'spades']
    @number = ['2', '3', '4', '5' , '6', '7', '8', '9' , '10', 'Jack', 'Queen', 'King', 'Ace']
    #create 52 cards
    @cards = []

    @suits.each do |suit|
      @number.each do |card|
        @cards << card + " of " + suit
      end
    end
  end

  def shuffle
    num = rand(52)

    (0...52).each do |i|
      temp = @cards[num]
      @cards[num] = @cards[i]
      @cards[i] = temp
    end
  end
end

class Card
  attr_reader :number, :suit

  def initialize number, suit
    @number = number
    @suit = suit
  end
end