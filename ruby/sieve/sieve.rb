class Sieve
attr_reader :range

  def initialize(number)
    @range = (2..number)
  end
  
  def primes
    numbers = range.to_a
    primes = []
    until numbers.empty?
      target = numbers.shift
      primes << target
      numbers.reject!{ |num| num % target == 0 }
    end
    primes
  end
end
