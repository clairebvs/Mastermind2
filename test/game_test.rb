require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_create_answer_random_sequence
    game = Game.new
    assert_equal 4, game.answer.length
  end






end
