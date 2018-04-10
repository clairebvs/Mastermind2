require 'minitest/autorun'
require 'minitest/pride'
require './lib/play'
require './lib/check_guess'
require './lib/rand_sequence'
require 'pry'

class PlayTest < Minitest::Test

  def test_it_exists
    play = Play.new
    assert_instance_of Play, play
  end

  def  test_it_has_welcome_message
    play = Play.new
    assert_equal "Welcome to MASTERMIND, Would you like to (p)lay, read the (i)nstructions, or (q)uit?", play.welcome_message
  end

  def test_it_gets_user_input
    play = Play.new
    user_input = "i"
    actual = Play.new.get_input
    expected = "Try to find a sequence of four elements made up of red, blue, yellow or green. One color can be use as many times as you want. After each attempt you will know how many correct colors you have and how many in the correct position."
    assert_equal expected, actual
  end



end
