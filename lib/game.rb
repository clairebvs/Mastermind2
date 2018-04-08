class Game

  attr_reader :answer

  def answer
    computer = Array.new (4)
    colors = ["g", "b", "y", "r"]
    computer.map do |color|
      colors.sample
      # binding.pry
    end.join
  end


end


# binding.pry
