class MathDojo
  attr_accessor :answer

  def initialize
    @answer = 0
  end

  def add(value)
    if value.kind_of?(Array)
      # add all elements of array
      @answer += value.reduce(:+)
    else
      @answer += value
    end
    self
  end

  def subtract(value)
    if value.kind_of?(Array)
      @answer -= value.reduce(:+)
    else
      @answer -= value
    end
    self
  end
end

@mathdojo = MathDojo.new

# @mathdojo.add(5)
# @mathdojo.add(10)

@mathdojo.add([5, 10])

puts @mathdojo.answer

