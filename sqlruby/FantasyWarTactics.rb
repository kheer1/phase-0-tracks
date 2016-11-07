#Fantasy War Tactics

require 'sqlite3'
require 'faker'

fwt = SQLite3::Database.new("fantasywartactics.db")
#To see data as a hash
#db.results_as_hash = true

#created the heros table
create_table_heros = <<-SQL
	CREATE TABLE IF NOT EXISTS heros( 
		id INTEGER PRIMARY KEY, 
		name VARCHAR(100), 
		age INT
		)
	SQL

#created the owners table
create_table_owners = <<-SQL
	CREATE TABLE IF NOT EXISTS owners( 
		id INTEGER PRIMARY KEY, 
		first_name VARCHAR(100),
		last_name VARCHAR(100) 
		)
	SQL

#created the ratings table
create_table_ratings = <<-SQL
	CREATE TABLE IF NOT EXISTS ratings( 
		id INTEGER PRIMARY KEY,
		rating INT,
		descripton VARCHAR(200) 
		)
	SQL

#created the acquisitions table
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

#ran the table creation
fwt.execute(create_table_heros)
fwt.execute(create_table_owners)
fwt.execute(create_table_ratings)
fwt.execute(create_table_acquisitions)	

#populated the heros table but first check to see if it was empty
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

# populated the ratings table but first checked to see if it was empty
if fwt.execute("SELECT id FROM ratings WHERE id=1").any? == false
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (1, 'Poor')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (2, 'Fair')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (3, 'Good')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (4, 'Very Good')")
	fwt.execute("INSERT INTO ratings (rating, descripton) VALUES (5, 'Excellent')")
end

# populated the owners table but first checked to see if it was empty then used faker to enter random names
if fwt.execute("SELECT id FROM owners WHERE id=1").any? == false
	10.times do
		fwt.execute("INSERT INTO owners (first_name, last_name) VALUES (?, ?)", [Faker::Name.first_name,Faker::Name.last_name])
	end
end

# populated the acquisitions table but first checked to see if it was empty then used random numbers to generate data, making sure there were no duplicates
if fwt.execute("SELECT id FROM acquisitions WHERE id=1").any? == false
	x=0
	
	while x < 100 do
		num1 = 1 + rand(10)
		num2 = 1 + rand(20)
		num3 = 1 + rand(5)
		found_duplicates = false
		test_duplicates = fwt.execute("SELECT heros_id FROM acquisitions WHERE owners_id=?",[num1])
		
		test_duplicates.each do |value|
			if value[0] == num2
				found_duplicates = true
			end
		end
		
		if found_duplicates == false
			fwt.execute("INSERT INTO acquisitions (owners_id, heros_id, ratings_id) VALUES (?, ?, ?)", [num1, num2, num3])
			x +=1
		end
	end
end


#printing the owners with a certain hero
def print_owners_with_hero (fwt, hero_name)
	
	temp = fwt.execute("SELECT owners.first_name, owners.last_name, ratings.descripton  FROM acquisitions JOIN owners ON acquisitions.owners_id = owners.id JOIN heros ON acquisitions.heros_id = heros.id JOIN ratings ON acquisitions.ratings_id = ratings.id WHERE heros.name = ? ORDER BY first_name, last_name",[hero_name])
	
	puts "\n\n#{hero_name} is owned by the following owners:"
	
	temp.each do |first_name,last_name,descripton|
		puts "First Name:#{first_name}   Last Name:#{last_name}   Rating:#{descripton}"
	end
end

#printed all the heros of an owner
def print_owners_heros (fwt, last_name)

	temp = fwt.execute("SELECT heros.name, ratings.rating, ratings.descripton  FROM acquisitions JOIN owners ON acquisitions.owners_id = owners.id JOIN heros ON acquisitions.heros_id = heros.id JOIN ratings ON acquisitions.ratings_id = ratings.id WHERE owners.last_name = ? ORDER BY first_name, last_name",[last_name])

	puts "\n\n#{last_name} owns the following heros:"
	
	temp.each do |hero_name,ratings, descripton|
		puts "Hero's Name:#{hero_name}   Rating:#{ratings}   Description:#{descripton}"
	end
end

#add a hero method that checks to see if the owner already has that hero
def hero_add (fwt, owner_id, hero_id, rating_id)

	own_hero = false
		fwt.execute("SELECT heros_id FROM acquisitions WHERE owners_id=?",[owner_id]).each do |value|
			if value[0] == hero_id
				puts "\n\nYou already own this hero!"
				own_hero = true
			end
		end

	if own_hero == false
		fwt.execute("INSERT INTO acquisitions (owners_id, heros_id, ratings_id) VALUES (?, ?, ?)", [owner_id, hero_id, rating_id])
		puts "\n\nHero has been added!"
	end
end

#drive data
print_owners_heros(fwt, 'Hahn')
print_owners_with_hero(fwt, 'Mu')
hero_add(fwt, 4, 8, 5)