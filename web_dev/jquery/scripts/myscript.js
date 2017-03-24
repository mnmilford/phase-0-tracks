$(document).ready(function() {
  // Make "See it blend in!" button work
  $("#hide").first().on('click', function() {
    $("#lizard-photo").fadeTo(800, 0);
  });
  
  // Make "Reveal the lizard!" button work
  $("#reveal").last().on('click', function() {
    $("#lizard-photo").fadeTo(800, 1);
  });

  // Change the background color after page loads
  $('body').css("background-color", "green");
});

