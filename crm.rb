require_relative "contact"

class CRM

  def initialize

  end

  def main_menu
    while true
      print_main_menu
      user_selected =gets.chomp.strip.to_i
      call_option(user_selected)

  end

  def print_main_menu
    puts "[1]Add a contact"
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '

  end

  def call_option(user_selected)
  case user_selected
  when 1

    add_new_contact

  when 2
    modify_existing_contact

  when 3
    delete_contact

  when 4
    display_all_contacts

  when 5
    search_by_attribute
  when 6
    break

end

  end


  def add_new_contact

  print "Enter first name: "
  first_name = gets.chomp.strip

  print "Enter last name: "
  last_name = gets.chomp.strip

  print "Enter email address: "
  email = gets.chomp.strip

  print "Enter a note: "
  note = gets.chomp.strip

  Contact.create(first_name, last_name, email, note)

  end

  def modify_existing_contact
    #ask what contact they want to modify
    #find contact in the array
    #once found, modify the contact by asking for firs

    puts "Who do you want to modify?"
    user_input = gets.chomp.strip
    modify_contact = []
      @@contacts.each do |contact|
        if user_input == contact
          modify_contact << contact
        end

      puts "What do you want to modify?"
      user_what = gets.chomp.strip 
      modify_contact.each do |contact|
        contact.

  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end
