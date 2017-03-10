// Write a JavaScript Program to reverse a string

// Input: The method/function will accept a string (single or multi-word) as the input
// Steps: 
  // Convert the string into a list of the characters
  // Calculate the length of the list of characters
  // One-by-one, grab the last character in the list and add it to a NEW list
  // Once grabbing all the characters and putting into a new list,
// Output: Return the new list as a string with the list items combined together

// JavaScript function to reverse a string
function reverseString(string) {
  string = string.split('');
  newString = [];
  for (var i = string.length; i > 0; i--) {
    newString.push(string.pop());
  }
  console.log(newString.join(''))
}

// Driver code to test function
reverseString("Michael");
reverseString("basketball");
reverseString("RandOm CapITaliZatIon".toUpperCase())