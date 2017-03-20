# VEHICLE MAINTENANCE LOG
# Allow user to add different cars to a database
# Users can keep one log file that shows work done on any cars
# Log file will keep track of date, mileage, cost of service, and additional notes

# require gems
require 'sqlite3'

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
def add_vehicle(year, make, model)
  vehicles