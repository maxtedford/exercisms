var Converter = function() {};

Converter.prototype.convert = function(map, input) {
  var output = '';

  for(var i = 0; i < input.length; i++){
    if(input[i] in map) {
      output = output + map[input[i]];
    }
  }
  return output;
};

Converter.prototype.toRna = function(input) {
  var map = {
    'C': 'G',
    'G': 'C',
    'T': 'A',
    'A': 'U'
  };
  return this.convert(map, input);
};

Converter.prototype.toDna = function(input) {
  var map = {
    'G': 'C',
    'C': 'G',
    'A': 'T',
    'U': 'A'
  };
  return this.convert(map, input);
};

module.exports = Converter;
