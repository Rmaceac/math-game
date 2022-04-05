class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @solution = @num1 + @num2
  end

  def print_question
    "What is #{@num1} + #{@num2}? "
  end

  def correct?(answer)
    answer == @solution
  end

end
