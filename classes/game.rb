# require './classes/question'

class Game
  attr_accessor :current_player

  def initialize
    @current_player = nil
    @players = []
    @round = 0
  end

  def count_round
    @round += 1
  end

  def new_round
    count_round
    switch_player

    question = Question.new
    puts "----- NEW TURN -----"
    puts "Question number #{@round}:"
    print "#{@current_player.name}... #{question.print_question}"
    answer = $stdin.gets.chomp

    if question.correct?(answer)
      puts "That is correct!"
      @current_player.score_point
      puts "Your score is now #{@current_player.score}."
    else
      puts "I'm sorry, but that's incorrect. You have lost a life..."
      @current_player.lose_life
      puts "#{@current_player.name} now has #{@current_player.lives} lives remaining."
    end

  end

  def start_game

    puts "Welcome! You've enlisted yourself and a friend to play an extremely boring math game!"

    print "Player 1, what is your name? "
    player1 = Player.new($stdin.gets.chomp)
    @players << player1

    print "Great to meet you #{player1.name}. And what is your name Player 2? "
    player2 = Player.new($stdin.gets.chomp)
    @players << player2

    puts "Wonderful! Welcome #{player1.name} and #{player2.name}! Let's begin shall we?"

    @current_player = player1

    while (@current_player.lives > 0)
      new_round
    end

    game_over
  end

  def switch_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def game_over
    puts "We have a winner!"
    @players.each { |player|
      if player.lives > 0
        puts "#{player.name} is the winner with a score of #{player.score} and #{player.lives} remaining!"
      end
    }
  end

end