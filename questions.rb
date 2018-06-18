class Question
  attr_reader :a, :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def question
    num1 = rand(@a..@b)
    num2 = rand(@a..@b)
  
    p "What does #{num1} plus #{num2} equal"

    answer = Integer(gets.chomp)
    
    if num1 + num2 === answer 
      p "YES! You are correct."
      true
    else
      p "No! Incorrect. Answer is: #{num1+num2}"
      false
    end 
  end
end