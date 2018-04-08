require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < Minitest::Test

  def test_create_answer_random_sequence
    game = Game.new
    assert_equal 4, game.answer.length
  end

  

end
