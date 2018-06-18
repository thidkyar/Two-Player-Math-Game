require "./player"
require "./questions"

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2, from, to)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @players = [player1, player2]
    @questions = Question.new(from,to)
  end

  def play
    puts "-----STARTING GAME-----"
    while !@player1.dead? && !@player2.dead?
      player_1 = @players[0]
      player_2 = @players[1]

      puts "-----NEW TURN-----"

      p "Hi #{player_1}"
      if !@questions.question
        @player1.lose_lives
      end

      p "P1: #{@player1::lives}/3 vs P2: #{@player2::lives}/3"

      puts "-----NEW TURN-----"

      p "Hi #{player_2}"      
      if !@questions.question
        @player2.lose_lives
      end
      p "P1: #{@player1::lives}/3 vs P2: #{@player2::lives}/3"
    end

    if @player1::lives > @player2::lives
      p "#{player_1} won with score of #{player1::lives}/3"
    else
      p "#{player_2} won with score of #{player1::lives}/3"
    end
    
    puts "-----GAME OVER-----"
    puts "Good Bye!"
  end
end
