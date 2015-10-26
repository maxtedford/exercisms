class Binary
  attr_reader :bs
  
  VERSION = 1
  
  def initialize(binary_string)
    @bs = to_int_array(binary_string)
  end
  
  def to_int_array(binary_string)
    chars = binary_string.chars.reverse
    if chars.all?{ |char| char == '0' || char == '1' } 
      chars.map(&:to_i)
    else
      raise ArgumentError.new("Only ones and zeros are allowed")
    end
  end
  
  def to_decimal
    factorial = 0
    bs.reduce(0) do |total, int|
      total += int * (2 ** factorial)
      factorial += 1
      total
    end
  end
end
