
class Card

attr_reader :value, :suit, :total_value

  def initialize (value, suit)
    @value = value
    @suit = suit
    @total_value = worth_assignment
  end

  def worth_assignment
  worth = {
        "2" => 2,
        "3" => 3,
        "4" => 4,
        "5" => 5,
        "6" => 6,
        "7" => 7,
        "8" => 8,
        "9" => 9,
        "10" => 10,
        "Jack" => 11,
        "Queen" => 12,
        "King" => 13,
        "Ace" => 14,
        "Clubs" => 0.1,
        "Diamonds" => 0.2,
        "Hearts" => 0.3,
        "Spades" => 0.4
      }

   total_value = worth[@value] + worth[@suit]
 end

end
