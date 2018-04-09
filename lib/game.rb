class Game

  attr_reader :answer,
              :colors


  def initialize
    @colors = ["g", "b", "y", "r"]
  end

  def answer
    computer = Array.new (4)
    4.times.map do |color|
      colors.sample
      binding.pry
    end.join
  end
 # missing 4.times do

end


# binding.pry
