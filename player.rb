class Player
  
attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def dead?
    @lives < 1
  end

  def lose_lives
    @lives -= 1
  end
end
    