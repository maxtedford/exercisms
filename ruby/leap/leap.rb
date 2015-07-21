require 'pry'

class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def self.leap?(year)
    leap = new(year)
    (leap.divisible_by_four and leap.not_divisible_by_100) or leap.year % 400 == 0
  end

  def divisible_by_four
    year % 4 == 0
  end

  def not_divisible_by_100
    !(year % 100 == 0)
  end
end
