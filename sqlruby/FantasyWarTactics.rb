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
		age INT, 
		rating INT
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


def hero_rating (db, name, rating)
end


def hero_power (db, name, power)
end

def hero_add (db, name)
end