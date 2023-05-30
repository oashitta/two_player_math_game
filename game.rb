require './players'
require './question'

# This will manage the game flow and keep track of the scores, lives and player turns. handles user input/answer and output/question
class Game 

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end
  
  # Switches between player 1 and player 2.
  def switch_players
    @current_player == @player_1 ? @player_2 : @player_1
  end

  def play_game

    while @player_1.lives > 0 && @player_2.lives > 0
      question = Question.new
      puts "#{@current_player.name}: #{question.generate}"
      answer = gets.chomp.to_i
      
      if question.correct_answer?(answer)
        puts "Good Job!"
        puts "Scores: #{@player_1.name}: #{@player_1.lives}/3,  #{@player_2.name}: #{@player_2.lives}/3"
      else
        @current_player.decrease_life
        puts "Wrong answer!"
        puts "Scores: #{@player_1.name}: #{@player_1.lives}/3,  #{@player_2.name}: #{@player_2.lives}/3"
      end

      @current_player = switch_players
      puts @player_1.lives.zero?

      
      if @player_1.lives.zero? || @player_2.lives.zero?
        end_game
      end
    end
  end

      def end_game
        puts "Game Over!"
        if @player_1.lives.zero?
          puts "#{@player_2.name} wins with #{@player_2.lives}/3"
        else
          puts "#{@player_1.name} wins with #{@player_1.lives}/3"
        end
      end


  
end
