class Question
  def generate_question
    @number_a = rand(1..20)
    @number_b = rand(1..20)
    @answer = @number_a + @number_b
  end

end