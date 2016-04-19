class Calculator
  attr_accessor :result
  
  INITIAL_VALUE = 0

  @@countAdd = INITIAL_VALUE
  @@countSubtract = INITIAL_VALUE
  @@countMultiply = INITIAL_VALUE
  @@countDivide = INITIAL_VALUE

  def initialize
  	@result = 0
  end

  def add(firstNum, secondNum)
    @@countAdd += 1
    @result = firstNum + secondNum
  end

  def subtract(firstNum, secondNum)
    @@countSubtract += 1
    @result = secondNum - firstNum
  end

  def multiply(firstNum, secondNum)
    @@countMultiply += 1
    @result = firstNum * secondNum
  end

  def divide(firstNum, secondNum)
    @@countDivide += 1
    @result = firstNum / secondNum
  end

  def self.getCountAdd
  	'the count is ' + @@countAdd.to_s
  end

  def self.getCountSubtract
    'the count is ' + @@countSubtract.to_s
  end

  def self.getCountMultiply
    'the count is ' + @@countMultiply.to_s
  end

  def self.getCountDivide
    'the count is ' + @@countDivide.to_s
  end


end