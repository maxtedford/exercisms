require 'pry'
class Grains
  
  def self.square(num)
    (1..num).inject(1) { |memo, number| 2**(number-1)}
  end
  
  def self.total
    (1..64).map { |number| 2**(number-1) }.inject(:+)
  end
end
