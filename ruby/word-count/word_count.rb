class Phrase
attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    phrase.downcase.gsub(/[^a-z\d\s']/i, " ").split(" ")
  end
  
  def word_count
    words.inject(Hash.new(0)){ |hash, word| hash[word] += 1; hash }
  end
end
