#Fantasy War Tactics

require 'sqlite3'
require 'faker'

fwt = SQLite3::Database.new("fantasywartactics.db")
#To see data as a hash
#db.results_as_hash = true

create_table_heros = <<-SQL
	CREATE TABLE IF NOT EXISTS heros( 
		id INTEGER PRIMARY KEY, 
		name VARCHAR(100), 
		age INT
		)
	SQL

create_table_owners = <<-SQL
	CREATE TABLE IF NOT EXISTS owners( 
		id INTEGER PRIMARY KEY, 
		first_name VARCHAR(100),
		last_name VARCHAR(100) 
		)
	SQL

create_table_ratings = <<-SQL
	CREATE TABLE IF NOT EXISTS ratings( 
		id INTEGER PRIMARY KEY,
		rating INT,
		descripton VARCHAR(200) 
		)
	SQL

create_table_acquisitions = <<-SQL
	CREATE TABLE IF NOT EXISTS acquisitions(
		id INTEGER PRIMARY KEY,
		owners_id INT,
		heros_id INT,
		ratings_id INT,
		FOREIGN KEY (owners_id) REFERENCES owners(id),
		FOREIGN KEY (heros_id) REFERENCES heros(id),
		FOREIGN KEY (ratings_id) REFERENCES rating(id)
		)	
	SQL


fwt.execute(create_table_heros)
fwt.execute(create_table_owners)
fwt.execute(create_table_ratings)
fwt.execute(create_table_acquisitions)	

10.times do 
puts "#{4 + rand(9)}"
end

if fwt.execute("SELECT id FROM heros WHERE id=1").any? == false
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Bearman', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Belle', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Celestial', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Chenny', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Deborah', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Deimos', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Dominique', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Elektra', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Gillan', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Jack', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Jenny', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Kai', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Klein', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Lena', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Mu', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Persona', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Raizel', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Serendi', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Valkyrie', 10 + rand(21)])
	fwt.execute("INSERT INTO heros (name, age) VALUES (?, ?)", ['Yekaterina', 10 + rand(21)])
end

if fwt.execute("SELECT id FROM ratings WHERE id=1").any? == false
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (1, 'Poor')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (2, 'Fair')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (3, 'Good')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (4, 'Very Good')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (5, 'Excellent')")
end

if fwt.execute("SELECT id FROM owners WHERE id=1").any? == false
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
end






def hero_rating (db, name, rating)
end


def hero_power (db, name, power)
end

def hero_add (db, name)
end