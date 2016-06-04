# Tables of computer language elements.
# by Mark Kairuz

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
cheatsheet_db = SQLite3::Database.new("cheatsheet.db")


# Delimiters
create_ruby_table_cmd = <<-RUBYTABLE
  CREATE TABLE IF NOT EXISTS ruby(
    id INTEGER PRIMARY KEY,
    type VARCHAR(255),
    code VARCHAR(255),
    comment VARCHAR(255)
  )
RUBYTABLE

  create_html_table_cmd = <<-HTMLTABLE
    CREATE TABLE IF NOT EXISTS html(
    id INTEGER PRIMARY KEY,
    type VARCHAR(255),
    code VARCHAR(255),
    comment VARCHAR(255)
  )
HTMLTABLE

    create_javascript_table_cmd = <<-JAVASCRIPTTABLE
    CREATE TABLE IF NOT EXISTS javascript(
    id INTEGER PRIMARY KEY,
    type VARCHAR(255),
    code VARCHAR(255),
    comment VARCHAR(255)
  )
JAVASCRIPTTABLE

# create a cheatsheet table for each language (if it's not there already)
cheatsheet_db.execute(create_ruby_table_cmd)
cheatsheet_db.execute(create_html_table_cmd)
cheatsheet_db.execute(create_javascript_table_cmd)

# Add a code to sheet
def add_code(cheatsheet_db, language, type, code, comment)
  cheatsheet_db.execute("INSERT INTO #{language} (type, code, comment) VALUES (?, ?, ?)", [type, code, comment])
end

# Subtract a code from sheet
def delete_code(cheatsheet_db, language, delete_by, delete_this)
  cheatsheet_db.execute("DELETE FROM #{language} WHERE #{delete_by}=#{delete_this}")
end

# View a code from sheet
def view_code(cheatsheet_db, language, look_for)
  p cheatsheet_db.execute("SELECT * FROM #{language} WHERE id='#{look_for}' OR type='#{look_for}' OR code='#{look_for}' OR comment='#{look_for}'")
end

# Begin the User inputs
puts "What would you like to do? Add, remove or view. Enter done when finished."
input = gets.chomp

# Initiate loop
while input.downcase != "done" do

	# Add a line
	if input.downcase == "add"
		puts "What language?"
		language = gets.chomp
		puts "What type of code is this? Ex: print"
		type = gets.chomp
		puts "What is the code? Ex: puts"
		code = gets.chomp
		puts "What comment would you like to add?"
		comment = gets.chomp
		add_code(cheatsheet_db, language, type, code, comment)

	# Delete a line
	elsif input.downcase == "remove"
		puts "What language?"
		language = gets.chomp
		puts "What category are you deleting by? ID, type, code or comment?"
		delete_by = gets.chomp
		puts "What would you like to delete?"
		delete_this = gets.chomp
		delete_code(cheatsheet_db, language, delete_by, delete_this)

	# View
	elsif input.downcase == "view"
		puts "What language?"
		language = gets.chomp
		puts "What would you like to look for?"
		look_for = gets.chomp
		view_code(cheatsheet_db, language, look_for)

	end
	puts ""
	puts "What would you like to do? Add, remove or view. Enter done when finished."
	input = gets.chomp
end

			



