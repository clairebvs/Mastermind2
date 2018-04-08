class Game

  attr_reader :answer

  def answer
    computer = Array.new (4)
    colors = ["g", "b", "y", "r"]
    4.times.map do |color|
      colors.sample
      # binding.pry
    end
  end

  def correct_color

  end
end


# binding.pry
