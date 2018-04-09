class Game

  attr_reader :answer,
              :colors


  def initialize
    @colors = ["g", "b", "y", "r"]
  end

  def answer
    computer = Array.new (4)
    computer.map do |color|
      colors.sample
      # binding.pry
    end.join
  end


end


# binding.pry
