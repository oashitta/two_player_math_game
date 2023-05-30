class Question
  attr_reader :number1, :number2

  # generate random numbers
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  # generate a question
  def generate
    "What does #{number1} plus #{number2} equal?"
  end

  #checks that the answer provided is correct and returns true if correct. if not false. 
  def correct_answer?(answer)
    answer === number1 + number2
  end
  
end
