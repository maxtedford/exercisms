class Squares
attr_reader :num, :set
  
  def initialize(num)
    @num = num
    @set = (1..num).to_a
  end
  
  def square_of_sums
    set.inject(0, &:+) ** 2
  end
  
  def sum_of_squares
    set.map{|num| num**2}.inject(0, &:+)
  end
  
  def difference
    square_of_sums - sum_of_squares
  end
end
