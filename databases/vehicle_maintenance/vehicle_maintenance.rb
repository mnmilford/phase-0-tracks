# VEHICLE MAINTENANCE LOG
# Allow user to add different cars to a database
# Users can keep one log file that shows work done on any cars
# Log file will keep track of date, mileage, cost of service, and additional notes

# Require Gems
require 'sqlite3'

# Program Variables
user_response = nil

# Create the required SQLite3 database
db = SQLite3::Database.new("car_maintenance.db")
db.results_as_hash = true

# Code to generate the required tables
create_vehicles_table = <<-SQL_CARS
  CREATE TABLE IF NOT EXISTS vehicles(
    id INTEGER PRIMARY KEY,
    year INT,
    make VARCHAR(255),
    model VARCHAR(255)
  )  
SQL_CARS

create_log_table = <<-SQL_Log
  CREATE TABLE IF NOT EXISTS log(
    id INTEGER PRIMARY KEY,
    service_date VARCHAR(255),
    car_id INT,
    mileage INT,
    service_performed VARCHAR(255),
    cost FLOAT,
    FOREIGN KEY (car_id) REFERENCES vehicles(id)
  )
SQL_Log

# Create the empty tables
db.execute(create_vehicles_table)
db.execute(create_log_table)

# Create some methods to add entries to tables
def add_vehicle(db)
  puts "What year is the vehicle?"
    year = gets.chomp
  puts "What is the make of the vehicle? (Honda, Toyota, Ford, etc.)"
    make = gets.chomp
  puts "What is the model of the vehicle?"
    model = gets.chomp
  db.execute("INSERT INTO vehicles (year, make, model) VALUES (#{year}, '#{make}', '#{model}')")
end

def log_entry(db)
  puts "What date are you servicing the vehicle? (MM/DD/YYYY)"
    date = gets.chomp
  puts "Which car are you servicing? Must enter the car id."
    car_id = gets.chomp
  puts "What is the mileage of the car?"
    mileage = gets.chomp
  puts "What service are you performing?"
    service = gets.chomp
  puts "How much did you spend on service? ($$.00)"
    cost = gets.chomp
  db.execute("INSERT INTO log (service_date, car_id, mileage, service_performed, cost) VALUES ('#{date}', #{car_id}, #{mileage}, '#{service}', #{cost})")
end

# Driver Code to test program
puts "Welcome to the vehicle maintenance program."
until user_response == 'EXIT'
  puts "What would you like to do? Respond with the question number.
    1. Add a vehicle
    2. Log vehicle maintenance
    3. View all vehicles
    4. Delete a vehicle
    Type EXIT to end the program."
  user_response = gets.chomp
  if user_response == "1"
    add_vehicle(db)
  elsif user_response == "2"
    log_entry(db)
  elsif user_response == "3"
    all_cars = db.execute("SELECT * FROM vehicles")
    all_cars.each do |vehicle|
      puts "Vehicle #{vehicle['id']}: #{vehicle['make']} #{vehicle['model']}"
    end
  elsif user_response == "4"
    puts "List of cars"
    all_cars = db.execute("SELECT * FROM vehicles")
    all_cars.each do |vehicle|
      puts "Vehicle #{vehicle['id']}: #{vehicle['make']} #{vehicle['model']}"
    end
    puts "Which car would you like to remove?"
    remove_car = gets.chomp
    db.execute("DELETE FROM vehicles WHERE id = #{remove_car}")
  else
    puts "Sorry, I didn't understand."
  end
end
puts "Thanks for using the vehicle maintenance program!"