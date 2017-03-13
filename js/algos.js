/***********************
Function to return longest phrase in an array
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
function longestPhrase(word_array) {
  var high_number = 0;
  var longest_phrase = "";

  for (let value of word_array) {
    if (value.length > high_number) {
      high_number = value.length;
      var longest_phrase = value;
    }
  }
  console.log("The longest phrase in the array is:");
  console.log(longest_phrase);
}

/***********************
Function that compares two objects to see if there is a shared key-value pair
Input: 
  Two objects that contains properties(keys) and values.
Do: 
  Iterate through the first object and extract each key-value pair
  Save each key-value pair as a string in an array (key_value_array1)
  Iterate through the second object and extract each key-value pair
  Save each key_value pair as a string in an (key_value_array2)
  Compare each index of the first array with every index in the second array
  If there are ANY matches, return true
  Otherwise, return false
Output:
  true or false
************************/
function compareObjects(obj1, obj2) {
  var key_value_array1 = [];
  var key_value_array2 = [];
  
  key_value_array1 = (Object.keys(obj1) + Object.values(obj1));
  console.log(key_value_array1);
}

var person_1 = {name: "Steven", age: 54};
var person_2 = {name: "Tamir", age: 54};


var some_words = [
  "Hakuna Matata",
  "Drawing a Blank",
  "Knuckle Down",
  "Elephant in the Room",
  "It's Not Brain Surgery",
  "Back To the Drawing Board"
]

var sentences = [
    "Can we go to the park.",
    "Where is the orange cat? Said the big black dog.",
    "We can make the bird fly away if we jump on something.",
    "We can go down to the store with the dog. It is not too far away.",
    "My big yellow cat ate the little black bird.",
    "I like to read my book at school.",
    "We are going to swim at the park."
]

// Driver code to test longestPhrase function
longestPhrase(some_words);
longestPhrase(sentences);

// Driver code to test compareObjects function
compareObjects(person_1, person_2);