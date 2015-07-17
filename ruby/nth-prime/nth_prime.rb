class Prime
  attr_reader :primes

  def nth(number)
    raise ArgumentError if number == 0
    @primes = [2]
    @count_num = 2
    until primes.length == number
      check_if_prime(@count_num)
      @count_num += 1
    end
    return @primes.last
  end
  
  def check_if_prime(number)
    results = []
    @primes.each do |num|
      result = number % num
      results << result      
    end
    @primes << number if !results.include?(0)
  end
end
