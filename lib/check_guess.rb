require './lib/rand_sequence'

class CheckGuess

  def initialize(sequence, guess)
    @guess = guess
    @sequence = sequence
  end

  def check_position
    if @guess == @sequence
      return "You are correct"
    else
      check_wrong_answer
    end
  end

  def check_wrong_answer
    message = "You are wrong"
    seq_arr = @sequence.chars
    guess_arr = @guess.chars
    matches = []
    seq_arr.each_with_index do |char, index|
      matches << (seq_arr[index] == guess_arr[index])
    end
    number_matches = matches.count(true)
    # binding.pry
      if number_matches != 0
        return message + "You have #{number_matches} correct position"
      else
        return message
      end
  end
end
