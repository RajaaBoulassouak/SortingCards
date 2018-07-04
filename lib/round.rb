require "./lib/card"
require "./lib/guess"
require "./lib/deck"


class Round

attr_reader :deck, :guesses, :number_correct

  def initialize(deck)
    @deck = deck
    @cards = deck.cards
    @guesses = []
    @number_correct = 0
  end

  def current_card
    @cards[0]
  end

  def record_guess(guess)

guess = Guess.new("#{guess[:value]} of #{guess[:suit]}", current_card)
   @guesses << guess
    if @guesses[-1].correct?
      @number_correct += 1
      @cards.shift
    else
      @number_correct
    end

     return guess
  end

  def percent_correct
    (@number_correct.to_f / @guesses.count.to_f) * 100
  end


end
