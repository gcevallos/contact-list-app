class Contact
 
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    # TODO: assign local variables to instance variables
    @first_name = first_name
    @last_name = last_name
    @email = email
  end
 
  def to_s
    # TODO: return string representation of Contact
  end
 
  ## Class Methods
  class << self
    def create(first_name, last_name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      
      new_contact = Contact.new(first_name,last_name, email)
      id = ContactDatabase.total_contacts
      contact_arr = []
      contact_arr << id 
      contact_arr << first_name
      contact_arr << last_name
      contact_arr << email
      ContactDatabase.add_to_database(contact_arr)
      puts "Contact ID:#{id}" 
    end
 
    def find(term)
      # TODO: Will find and return contacts that contain the term in the first name, last name or email
    end
 
    def all
      # TODO: Return the list of contacts, as is
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
    end
    
  end
 
end

#Contact.create("Jim", "something@else.com")