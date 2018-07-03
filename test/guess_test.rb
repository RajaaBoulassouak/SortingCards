require "./lib/guess"
require "./lib/card"
require 'minitest/autorun'
require 'minitest/pride'
require "pry"

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_card_has_attributes
    card = Card.new("10", "Hearts")
    result = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", result.response
    assert_equal card, result.card
  end

  def test_correct_1
    card = Card.new("10", "Hearts")
    result = Guess.new("10 of Hearts", card)
    assert_equal true, result.correct?
  end

  def test_correct_2
    card = Card.new("10", "Hearts")
    result = Guess.new("2 of Clubs", card)
    assert_equal false, result.correct?
  end

  def test_feedback_1
    card = Card.new("10","Hearts")
    result = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", result.feedback
  end

  def test_feedback_2
    card = Card.new("10","Hearts")
    result = Guess.new("2 of Clubs", card)
    assert_equal "Incorrect.", result.feedback
  end
  
end
