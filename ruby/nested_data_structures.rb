# Design and Build a Nested Data Structure

us_athletics = {
  nba: { 
    teams: {
      'San Antonio' => 'Spurs',
      'Houston' => 'Rockets',
      'Los Angeles' => 'Lakers'
    },
    mascots: [
      'Lucky the Leprechaun',
      'Hugo',
      'Jazz Bear'     
    ]
  },
  nfl: {
    teams: [
      'Atlanta Falcons',
      'Green Bay Packers',
      'Dallas Cowboys',
    ],
    players: {
      Tom_Brady: {position: 'QB', team: 'Patriots'},
      Antonio_Brown: {position: 'WR', team: 'Steelers'},
      Aaron_Rodgers: {position: 'QB', team: 'Packers'}
    }
  }

}

puts "Some NBA teams are:"
puts us_athletics[:nba][:teams]

puts "Aaron Rodgers facts:"
puts us_athletics[:nfl][:players][:Aaron_Rodgers]

puts "One NFL teams is:"
puts us_athletics[:nfl][:teams].last