require "./lib/card"

class Deck

attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
  card_array = @cards.length

  loop do
    sorted = false
    (card_array-1).times do |i|
      if @cards[i].total_value > @cards[i + 1].total_value
         @cards[i], @cards[i + 1] = @cards[i + 1], @cards[i]
         sorted = true
      end
    end
    break if sorted == false
   end

    @cards

  end
end
