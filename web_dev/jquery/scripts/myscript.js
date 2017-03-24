$(document).ready(function() {
  // Make "See it blend in!" button work
  $("#hide").on('click', function() {
    $("#lizard-photo").fadeTo(600, 0);
  });
  
  // Make "Reveal the lizard!" button work
  $("#reveal").on('click', function() {
    $("#lizard-photo").fadeTo(600, 1);
  });

  $("#double-size").on('click', function() {
    $("#lizard-photo").animate({
      width: "550px", }, 600);
  });

  $("#regular-size").on('click', function() {
    $("#lizard-photo").animate({
      width: "225px", }, 600);
  });

  // Change the background color after page loads
  $('body').css("background-color", "green");
});

