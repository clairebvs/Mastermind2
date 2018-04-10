require 'minitest/autorun'
require 'minitest/pride'
require './lib/check_guess'
require './lib/rand_sequence'
require 'pry'

class CheckGuessTest < Minitest::Test

  def test_incorrect_color
    skip
    sequence = "yyyy"
    guess = "bbbb"
    actual = CheckGuess.new(sequence, guess).check_position
    expected = "You are wrong"
    assert_equal expected, actual
  end

  def test_correct_color
    skip
    sequence = "yyyy"
    guess = "yyyy"
    actual = CheckGuess.new(sequence, guess).check_position
    expected = "You are correct"
    assert_equal expected, actual
  end

  def test_incorrect_position_and_color
    sequence = "yyyy"
    guess    = "byyy"
    expected = "You are wrong. You have 3 correct position and 1 correct color"
    actual = CheckGuess.new(sequence, guess).check_position
    assert_equal expected, actual
  end

end
