# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays an address

get '/contact' do 
  "<strong>Dev Bootcamp</strong><br>
  1705 Guadalupe Street, 1st Fl<br>
  Austin, TX 78701"
end

# write a GET route that takes a person's name as a query
# and display "Good job, [person's name]!"
# If the query param is not present, simply say "Good job!"

get '/great_job' do
  person = params[:name]
  if person
    "Good job, #{person}!"
  else
    "Good job!"
  end
end

# write a route that uses route paramaters to add two numbers

get '/add/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  answer = (num1 + num2).to_s
end

# a route to search student database by campus and return list

get '/students_at/:campus' do
  campus = params[:campus]
  case campus
    when "SD", "SF", "NYC", "CHI", "SEA"
      students = db.execute("SELECT * FROM students WHERE campus=?", campus)
      response = "<strong>Here is a list of students at the #{campus} campus!</strong><br><br>"
      students.each do |student|
        response << "Student ID: #{student['id']}<br>"
        response << "Student Name: #{student['name']}<br><br>"
      end
      response
    else
      "Sorry, a #{campus} campus either doesn't exist or doesn't have any enrolled students."
  end
end