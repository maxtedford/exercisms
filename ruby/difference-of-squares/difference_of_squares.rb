class Squares
attr_reader :set
  
  def initialize(num)
    @set = (1..num).to_a
  end
  
  def square_of_sums
    set.inject(:+) ** 2
  end
  
  def sum_of_squares
    set.map{|num| num**2}.inject(:+)
  end
  
  def difference
    square_of_sums - sum_of_squares
  end
end
