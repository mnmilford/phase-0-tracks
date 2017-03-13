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
Issues:
  Requires that the objects have the same properties in the same order
************************/
function compareObjects(obj1, obj2) {
  var key_value_array1 = [];
  var key_value_array2 = [];
  var true_false = [];
  
  array1_keys = (Object.keys(obj1));
  array1_values = (Object.values(obj1));
  
  array2_keys = (Object.keys(obj2));
  array2_values = (Object.values(obj2));

  for (var i = 0; i < array1_keys.length; i++) {
    key_value_array1[i] = array1_keys[i] + " " + array1_values[i];
  }
  
  for (var x = 0; x < array2_keys.length; x++) {
    key_value_array2[x] = array2_keys[x] + " " + array2_values[x];
  }

  for (var y = 0; y < key_value_array1.length; y++) {
    if (key_value_array1[y] === key_value_array2[y]) {
      true_false.push(true);
    }
    else {
      true_false.push(false);
    }
  }

  if (true_false.includes(true)) {
    return true;
  }
  else {
    return false;
  }
}

/***********************
Function to create an array of a given length filled with random strings
Input: 
  An integer - for the number of strings to be included in array
Do: 
  Create an empty array to store values in
  Add a variable that stores a 10 character string
  Create sub-strings of variable length * the inputted integer
  Save each sub-string to the random array variable
Output:
  Array with strings
************************/
function randArray(int) {
  var arr = [];
  var string = "abcdefghijklmnopqrstuvwxyz";

  do {
      var sub1 = Math.floor(Math.random() * string.length);
      var sub2 = Math.floor(Math.random() * string.length);
      if (sub2 - sub1 >= 1 && sub2 - sub1 <= 10) {
        arr.push(string.substring(sub1, sub2));
      }
  }
  while (arr.length < int);

  return arr;
}

var person_1 = {name: "Steven", age: 54};
var person_2 = {name: "Tamir", age: 54};
var person_3 = {name: "Steven", age: 32};
var person_4 = {name: "Bob", age: 48};

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
console.log(compareObjects(person_1, person_2));
console.log(compareObjects(person_1, person_3));
console.log(compareObjects(person_2, person_4));

// Driver code to test randArray function
console.log(randArray(9));

// Driver code to feed randArray output to longestPhrase function
for (var p = 0; p < 10; p++) {
  var new_arr = randArray(7);
  console.log(new_arr);
  longestPhrase(new_arr);
}