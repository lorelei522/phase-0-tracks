# require gems
require 'sinatra'
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

# Release 0-1 A /contact route that displays an address (you can make up the address).

get '/contact' do
  "#{Faker::Address.street_address} <br>#{Faker::Address.city}, #{Faker::Address.state} #{Faker::Address.zip}"
end 

# Release 0-2 /great_job that will tell the person good job and their name if name not found
# just good job

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!!!"
  else
    "Good job!"
  end
end  

# Release 0-3 Route that will add two numbers and show the sum.

get '/add/:num1/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  sum = num1.to_i + num2.to_i
  "Here is your equation: #{num1} + #{num2} = #{sum}"
end

#Bonus: Add a search route. Can search the whole database by age and return the students by age

# add an option if no one in the database has that age


get '/search/:search_age' do
  age = params[:search_age]
  student_age = db.execute("SELECT * FROM students WHERE age=?", [params[:search_age]])
  list = ''
  student_age.each do |student|
    list << "Name: #{student['name']}<br>"
    list << "Age: #{student['age']}<br>"
    list << "Campus: #{student['campus']}<br><br>"
  end

  if list.empty?
    "Sorry we don't have any students with that age!"
  else
    "Here are the students with the age of #{age} years old:<br><br> #{list}"
  end
  
 end    





