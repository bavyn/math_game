class Question
  def generate_question
    @number_a = rand(1..20)
    @number_b = rand(1..20)
    @answer = @number_a + @number_b
  #  puts "What is #{@number_a} + #{@number_b}?"
  end

  def to_s
    "What is #{@number_a} + #{@number_b}?"
  end

  def check_answer
    answer.to_i = @answer
  end

end