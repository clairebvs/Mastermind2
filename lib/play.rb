class Play

  def welcome_message
   "Welcome to MASTERMIND, Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def get_input
    user_input = ""
    user_input = gets.chomp
    until user_input == "q" || user_input == "quit"
      # user_input = gets.chomp
      if user_input == "p" || user_input == "play"
        puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
      else user_input == "i" || user_input == "quit"
        puts "Try to find a sequence of four elements made up of red, blue, yellow or green. One color can be use as many times as you want. After each attempt you will know how many correct colors you have and how many in the correct position. "
        user_input = gets.chomp
      end
      break
    end
  end

end

play = Play.new
puts play.welcome_message
puts play.get_input
