require "./lib/card"
require 'minitest/autorun'
require 'minitest/pride'

class CardTest < Minitest::Test

  def test_it_exists
    card = Card.new("10", "Hearts")
    assert_instance_of Card, card
  end

  def test_card_attributes
    result = Card.new("10", "Hearts")
    assert_equal "10", result.value
    assert_equal "Hearts", result.suit
  end

  def test_worth_assignment
    card = Card.new("4","Hearts")
    assert_equal 4.3, card.worth_assignment
  end

end
