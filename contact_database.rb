## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase
	def self.add_to_database(contact_arr)
		CSV.open("contacts.csv", "a") do |csv| 
			csv << contact_arr
		end
	end
	def self.total_contacts
	CSV.open("contacts.csv", "r") do |csv|
		csv.readlines.size
		end
	end
end



