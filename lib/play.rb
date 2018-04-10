class Play

def instruction
  return "Welcome to MASTERMIND"
  return "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  user_input = ""
  until user_input == "q"
    user_input = gets.chomp
    if user_input == "p"
      puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    end
end

# play = Play.new
