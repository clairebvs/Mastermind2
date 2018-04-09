require 'minitest/autorun'
require 'minitest/pride'
require './lib/check_guess'
require './lib/game'

class CheckGuessTest < Minitest::Test

  def test_incorrect_color
    game = Game.new("yyyy")
  # user_input = "rrgg"
    assert_equal [0, 0], CheckGuess.compare(game.answer, "bbbb")
  end

end
