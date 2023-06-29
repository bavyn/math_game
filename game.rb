class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = p1 #player 1 will have the first turn
  end

  def start_game
    loop do
      puts "----- NEW TURN -----"

      turn = Turn.new(@current_player, Question.new)
      turn.play_turn

      break if game_over?

      switch_turn
    end

    end_game
  end

  def switch_turn
    @current_player = (@current_player == @p1) ? @p2 : @p1
  end

  def game_over?
    @p1.lives.zero? || @p2.lives.zero?
  end

  def end_game
    winner = (@p1.lives.zero?) ? @p2 : @p1
    loser = (@p2.lives.zero?) ? @p1 : @p2

    puts "----- GAME OVER -----"
    puts "#{winner.name} wins!!"
    display_scores
    puts "Good bye!"

  end

  def display_scores
    puts 'Final scores: '
    puts "#{@p1.name}: #{@p1.score}"
    puts "#{@p2.name}: #{@p2.score}"
  end

end