var colors = ["blue", "green", "purple", "red"]
var names = ["Tyler", "Andrew", "Katy", "Glenna"]

colors.push("orange")
names.push("Emmanuel")

// Function to add hash-like values from two different arrays
var horses = {};
for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);