class Phrase
attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def to_array
    phrase.include?(" ") ? phrase.split : phrase
  end
  
  def word_count
    phrase.include?(" ") ? to_array.group_by{ |word| word } : { phrase => 1 }
  end
end
