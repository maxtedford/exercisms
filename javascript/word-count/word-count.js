'use strict';

module.exports = function (input) {
  
  var counts = {};
  
  var replace = function (sentence) {
    return sentence.replace("\t", " ").replace("\n", " ")
  };
  
  function eliminateExtras(value) {
    return value != ""
  }
  
  var tokens = replace(String(input).trim()).split(" ").filter(eliminateExtras) || [];
  
  tokens.forEach(function (token) {
    var word = token;
    word in counts ? counts[word] += 1 : counts[word] =  1;
  });

  return counts;
};
