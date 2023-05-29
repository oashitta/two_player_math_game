# This will manage the game flow and keep track of the scores, lives and player turns. handles user input/answer and output/question
class Game 

  #gotten from the player class?
  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2

  #if answer is wrong then score = -1,  message = "wrong answer", prints out score(?/3) for both players. moves on to next player


  #if answer is correct then, score = same (remains at current score),  message = "correct answer", prints out scores (?/3) for both players, moves on to next player.

  #where any player's lives = 0, message = "game over", winner is player_ with score of ?/3
end

# This class will handle the question generation. it will randomly select 2 numbers between 1 and 20 and generate new questions





