class Fixnum

  def to_roman
    roman_numbers = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I",
    }
    
    n = self
    roman = ""
    roman_numbers.each do |int, letter|
      roman << letter*(n / int)
      n = n % int
    end
    return roman
  end
end
