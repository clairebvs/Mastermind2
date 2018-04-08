class Game

  attr_reader :answer

  def answer
    computer = Array.new (4)
    color_sample = ["g", "b", "y", "r"]
      computer.map do
      color_sample.sample
      end.join
      binding.pry

  end
end

# colors = ['r', 'y', 'b', 'g']
# Array.new(4).map do |color|
#   answer = ""
#   4.times do
#     answer << colors.sample
#     # binding pry
#   end
# end
