#This class will handle the creation of new players
class Players
  attr_reader :name
  
  def initialize(name)
    @name = name
    @lives = 3
    # @score = 3
  end

end 

player1 = Player.new("Player 1")
player2 = Player.new("Player 2") 

puts player1.name
puts player2.name
p player1
p player2

