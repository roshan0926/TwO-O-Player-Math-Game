class Questions
  attr_accessor :answer, :display
  def initialize() 
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
    @display = "What is #{@number1} plus #{@number2} ?"
  end
end