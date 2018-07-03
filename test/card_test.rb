require "./lib/card"
require 'minitest/autorun'
require 'minitest/pride'

class CardTest < Minitest::Test

  def test_it_exists
    card = Card.new("10", "Hearts")
    assert_instance_of Card, card
  end

  def test_card_has_attributes
    result = Card.new("10", "Hearts")
    assert_equal "10", result.value
    assert_equal "Hearts", result.suit
  end
end
