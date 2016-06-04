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


# View a code from sheet



puts "What would you like to do? Add, remove or view. Enter done when finished."
input = gets.chomp

while input.downcase != "done" do

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

	elsif input.downcase == "remove"
		puts "remove"
	elsif input.downcase == "view"
		puts "view"
	end
	puts "What would you like to do? Add, remove or view. Enter done when finished."
	input = gets.chomp
end

			



