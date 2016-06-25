var Bob = function() {
//   hey: function(input) {
//     if (this.shouting(input)) {
//       return "Whoa, chill out!"
//     } else if (input.slice(-1) === '?') {
//       return "Sure."
//     } else if (input.match(/^\s+$/) || input.length === 0) {
//       return 'Fine. Be that way!'
//     } else {
//       return "Whatever."
//     }
//   },
//
//   shouting: function(input)  {
//
//   }

Bob.prototype.hey = function(input) {
  if (this.shouting(input)) {
    return "Whoa, chill out!"
  } else if (input.slice(-1) === '?') {
    return "Sure."
  } else if (input.match(/^\s+$/) || input.length === 0) {
    return 'Fine. Be that way!'
  } else {
    return "Whatever."
  }
};

Bob.prototype.shouting = function(input) {
  return (input.match(/[A-Za-z]/) && input.toUpperCase() === input);
}
};

module.exports = Bob;
