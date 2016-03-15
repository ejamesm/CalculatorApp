class Calculator
  attr_accessor :result
  
  INITIAL_VALUE = 0

  @@count = INITIAL_VALUE

  def initialize
  	@result = 0
  end

  def add(firstNum, secondNum)
    @@count += 1
    @result = firstNum + secondNum
  end

  def subtract(firstNum, secondNum)
    @result = secondNum - firstNum
  end

  def multiply(firstNum, secondNum)
    @result = firstNum * secondNum
  end

  def divide(firstNum, secondNum)
    @result = firstNum / secondNum
  end

  def self.getCount
  	'the count is ' + @@count.to_s
  end


end