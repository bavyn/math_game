class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = p1 #player 1 will have the first turn
  end

  def start_game
    # define turn as a new Turn with current player and new question
    # if the game is over, break
    # switch turn
    #end game
  end

  def switch_turn
    # ternerary operator. check who current player is and set the true to other player
  end

  def game_over?
    # true if either player has 0 lives
  end

  def end_game
    # define winner as the person who doesnt have 0 lives
    # define loser as the person who does have 0 lives

    puts "----- GAME OVER -----"
    puts "#{winner.name} wins!!"
    display_scores
    puts "Good bye!"

  end

  def display_scores
    puts 'Final scores: '
    puts "#{p1.name}: #{p1.score}"
    puts "#{p2.name}: #{p2.score}"
  end

end