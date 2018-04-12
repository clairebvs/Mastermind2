require './lib/check_guess'
require 'pry'

class Play

  def initialize
    @count = 0
    @start_timer = Time.now
  end

  def welcome_message
    "Welcome to MASTERMIND"
  end

  def get_input
    user_input = " "
    until user_input == "q" || user_input == "quit"
      puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
      user_input = gets.chomp
      if user_input == "p" || user_input == "play"
        puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
        guess_input
      elsif user_input == "i" || user_input == "instruction"
        puts "Try to find a sequence of four elements made up of red, blue, yellow or green. One color can be use as many times as you want. After each attempt you will know how many correct colors you have and how many correct position. "
      else user_input == "q" || user_input == "quit"
        puts "Why ?"
        exit
      end
    end
  end

  def guess_input
    answer = RandomSequence.new.answer_sample
    @start_timer = Time.now
    user_input = ""
    loop do
      puts "Make a guess"
      user_input = gets.chomp.downcase
      if  user_input == "q" || user_input == "quit"
        break
      end
      @count += 1
      CheckGuess.new(answer, user_input).check_position
      p "You have taken #{@count} guess(es)"
      if user_input == "cheat"
        puts "You cheat #{answer}!!!!"
      elsif user_input.length < 4
        puts "It is too short !!"
      elsif user_input.length > 4
        puts "It is too long"
      elsif user_input == answer
        correct_guess(answer)
      end
    end
  end

  def correct_guess(answer)
    end_time = Time.now
    timer = end_time - @start_timer
    puts "Congratulations! You guessed the sequence #{answer} in #{@count} guesses over #{timer} seconds.
    Do you want to (p)lay again or (q)uit?"
    @count = 0
    new_game
  end

  def new_game
    user_input = ""
      user_input = gets.chomp.downcase
      if user_input == "p" || user_input == "play"
        guess_input
      elsif user_input == "q" || user_input == "quit"
        puts "Goodbye"
        exit
      else
        puts "(p)lay or (q)uit ?"
        new_game
      end
  end
end

play = Play.new
puts play.welcome_message
puts play.get_input
