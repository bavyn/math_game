class Player
  attr_reader :name
  attr_accessor :lives, :score

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def decrease_lives
    @lives -=1
  end

  def increase_score
    @score += 1
  end
end
