require 'minitest/autorun'
require 'minitest/pride'
require './lib/rand_sequence'
require 'pry'

class RandomSequenceTest < Minitest::Test

  def test_it_exists
    sequence = RandomSequence.new
    assert_instance_of RandomSequence, sequence
  end

  def test_create_answer_random_sequence
    sequence = RandomSequence.new
    assert_equal 4, sequence.answer_sample.length
  end






end
