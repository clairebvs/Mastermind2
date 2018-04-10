require './lib/rand_sequence'

class CheckGuess


  def initialize(sequence, guess)
    @guess = guess
    @sequence = sequence
  end

  def check_position
    if @guess == @sequence
      return "You are correct."
    else
      check_wrong_answer
    end
  end

  def check_wrong_answer
    message = "You are wrong."
    seq_arr = @sequence.chars
    guess_arr = @guess.chars
    matches = []
    matched_color = []
    seq_arr.each_with_index do |char, index|
      matches << char if (seq_arr[index] == guess_arr[index])
      matched_color << char if seq_arr[index] == guess_arr[index]
    end
    number_matches = matches.length
    uniq_color = matched_color.uniq.length
    if number_matches != 0 || uniq_color != 0
      p message + " You have #{number_matches} correct position and #{uniq_color} correct color"
    else
      p message
    end
  end
end
