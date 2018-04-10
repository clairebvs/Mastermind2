require 'minitest/autorun'
require 'minitest/pride'
require './lib/play'
require './lib/check_guess'
require './lib/rand_sequence'

class PlayTest < Minitest::Test

  def test_it_exists
    play = Play.new
    assert_instance_of Play, play
  end

  def  test_it_has_instruction
    play = Play.new
    assert_equal "Welcome to MASTERMIND", play.instruction

  end

end
