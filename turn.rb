class Turn

  def initialize(current_player, question)
    @current_player = current_player
    @question = question
  end

  def play_turn
    @question.generate_question
    puts '#{@current_player.name}: #{@question}'

    answer = gets.chomp

    if @question.check_answer(answer)
      @current_player.increase_score
      puts "Yes! You are correct!!"
    else
      @current_player.decrease_lives
      puts "Uh oh! That's not the correct answer :("
    end
  end


end