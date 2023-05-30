#This class will handle the creation of new players
class Players
  attr_reader :name, :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrease_life
    @lives -= 1
  end

end 

