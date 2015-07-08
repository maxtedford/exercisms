class Complement

  @dna = {"G" => "C",
          "C" => "G",
          "T" => "A",
          "A" => "U"}
  
  @rna = @dna.invert
  
  def self.of_dna(dna_strand)
    dna_strand.chars.map do |nucleotide|
      if @dna[nucleotide].nil?
        raise(ArgumentError)
      else
        @dna[nucleotide]
      end
    end.join
  end

  def self.of_rna(rna_strand)
    rna_strand.chars.map do |nucleotide|
      if @rna[nucleotide].nil?
        raise(ArgumentError)
      else
      @rna[nucleotide]
      end
    end.join
  end
end
