var Hamming = {
  compute : function(dna, rna) {
    if(dna.length === rna.length) {
      var counter = 0;
      for(var i = 0; i < dna.length; i++){
        if(dna[i] !== rna[i]){
          counter++;
        }
      }
      return counter;
    } else {
      throw new Error("DNA strands must be of equal length.");
    }
  }
};

module.exports = Hamming;
