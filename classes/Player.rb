class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    if @lives > 0
      @lives -= 1
    end
  end
end