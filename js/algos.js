/***********************
A function to return longest phrase in an array
Input: 
  An array of multiple strings. Could be single words or phrases.
Do: 
  Set a default value of high_number at 0
  Calculate the number of characters for each phrase in the array
  If the number of characters is greater than the current high_number
  set the phrase as a new variable called longest_phrase
  Once all phrases in the array have been examined,
Output:
  Return the current string stored in the variable longest_phrase
************************/
var some_words = [
  "Hakuna Matata",
  "Drawing a Blank",
  "Knuckle Down",
  "Elephant in the Room",
  "It's Not Brain Surgery",
  "Back To the Drawing Board"
]

function longestPhrase(word_array) {
  let array = word_array;
  var high_number = 0;
  var longest_phrase = "";

  for (let value of array) {
    if (value.length > high_number) {
      var longest_phrase = value;
    }
  }
  console.log("The longest phrase in the array is:");
  console.log(longest_phrase);
}

// Driver code to test longestPhrase function
longestPhrase(some_words);