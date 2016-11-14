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

# A /contact route that displays an address
get '/contact' do
  "888 Eight St, Eighth Villa, IL, 80808"
end

#route that can take a person's name as a query parameter (not a route parameter) 
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

#Add two numbers
get '/:num1/add/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  total = num1 + num2
  "The total is #{total}"
end

=begin
Is Sinatra the only web app library in Ruby? What are some others?
Ruby on Rails
Volt
Rum

Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others
No you can can use others like Activerecord
  
What is meant by the term web stack?
It's a refers to technologies used to make a website.

=end