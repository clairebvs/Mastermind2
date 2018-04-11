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
    # puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    user_input = " "
    until user_input == "q" || user_input == "quit"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
      user_input = gets.chomp
      if user_input == "p" || user_input == "play"
        puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
        guess_input
      elsif user_input == "i" || user_input == "instruction"
        puts "Try to find a sequence of four elements made up of red, blue, yellow or green. One color can be use as many times as you want. After each attempt you will know how many correct colors you have and how many in the correct position. "
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
      #   If it’s 'q' or 'quit' then exit the game !!
      if  user_input == "q" || user_input == "quit"
        break
        #   If it’s 'c' or 'cheat' then print out the current secret code
      elsif user_input == "cheat"
        puts "You cheat #{answer}!!!!"
        #   If it’s fewer than four letters, tell them it’s too short
      elsif user_input.length < 4
        puts "It is too short !!"
        #   If it’s longer than four letters, tell them it’s too long
      elsif user_input.length > 4
        puts "It is too long"
        #   If they guess the secret sequence, enter the end game flow below
      elsif user_input == answer
         end_time = Time.now
         timer = end_time - @start_timer
        puts "Congratulations! You guessed the sequence #{answer} in #{@count} guesses over #{timer}
        Do you want to (p)lay again or (q)uit?"
        break
      else
        @count += 1
        CheckGuess.new(answer, user_input).check_position
        p "You have taken #{@count} guess(es)"
      end
    end
    p welcome_message
    get_input
  end

  # Congratulations! You guessed the sequence 'GRRB' in 8 guesses over 4 minutes,
  # 22 seconds.
  #
  # Do you want to (p)lay again or (q)uit?


end

play = Play.new
puts play.welcome_message
puts play.get_input
