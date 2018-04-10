class RandomSequence
  attr_reader :answer,
              :colors

  def initialize
    @colors = ["g", "b", "y", "r"]
    @answer = answer_sample
  end

  def answer_sample
    computer = Array.new (4)
    4.times.map do |color|
      colors.sample
    end.join
  end
end
