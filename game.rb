class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = p1 #player 1 will have the first turn
  end

  def start_game
    loop do
      puts "----- NEW TURN -----"
    # define turn as a new Turn with current player and new question
      turn = Turn.new(@current_player, Question.new)
      turn.play_turn
    # if the game is over, break
      break if game_over?
    # switch turn
      switch_turn
    end
    #end game
    end_game
  end

  def switch_turn
    # ternerary operator. check who current player is and set the true to other player
    @current_player = (@current_player == @p1) ? @p2 : @p1
  end

  def game_over?
    # true if either player has 0 lives
    @p1.lives.zero? || @p2.lives.zero?
  end

  def end_game
    # define winner as the person who doesnt have 0 lives
    winner = (@p1.lives.zero?) ? @p2 : @p1

    # define loser as the person who does have 0 lives
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