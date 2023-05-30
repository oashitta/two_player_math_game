require './game'
require './players'
require './question'

# This will manage the game flow and keep track of the scores, lives and player turns. handles user input/answer and output/question

player_1 = Players.new("player_1")
player_2 = Players.new("player_2")
game = Game.new(player_1, player_2)

game.play_game
