class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def print_question
    "What is #{num1} + #{num2}?"
  end

  def correct?
    guess == @answer
  end

end
