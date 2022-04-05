class Player
  attr_reader :name, :score
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def lose_life
    @lives -= 1
  end

  def score_point
    @score += 1
  end

end