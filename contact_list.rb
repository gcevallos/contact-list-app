require_relative 'contact'
require_relative 'contact_database'

# TODO: Implement command line interaction
# This should be the only file where you use puts and gets
class Application

	def self.command_choice
		something = ARGV[0]
		case something 
			when "help" 
				puts "Here is a list of available commands:"
				puts "	new  - Create a new contact"
				puts "	list - List all contacts"
				puts "	show - Show a contact"
				puts "	find - Find a contact"

			when "new"
				puts "Please specify your first name."
				first_name = STDIN.gets.chomp
				puts "Please specify your last name."
				last_name = STDIN.gets.chomp
				puts "Plase specify your email"
				email = STDIN.gets.chomp
				Contact.create(first_name, last_name, email) 
		end
	end 

	#def new_contact_prompt
	#	new_keyword = ARGV.first

	#	if new_keyword == "new"


	#	end
	#end
end

Application.command_choice


