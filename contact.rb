class Contact

@@contacts = []
@@id = 1
  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note = "none")
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id

    @@id +=1


  end

  # This method should call the initializer,
  # store the newly created contact, and then return it

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end


  def email
    @email

  end

def note

@note
end


  def notes=(note)
    @note = note
  end


  def contact_id
    @id
  end




  #class methods are performed by the class itself
  #and therefore operate on the whole set of objects of that type
  #therefore if we want to make changes that operate on whole sets of objects of that type, we should use class methods

  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, note)
    @@contacts << new_contact
    return new_contact



  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts

  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)

    @@contacts.each do |contact|
      if contact.contact_id == id
        puts "The contact you have selected is: #{contact.full_name}"
      end
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attrib, value)

  case attrib

  when "first_name"

      @@contacts.each do |contact|
        if value == contact.first_name
          puts "Contacts with this first name: #{contact.contact_id} #{contact.full_name}"
          contact
        end
      end

    when "last_name"
    @@contacts.each do |contact|
      if value == contact.last_name
        puts "Contacts with this last name: #{contact.contact_id} #{contact.full_name}"
        contact
      end
    end

    when "email"
    @@contacts.each do |contact|
      if value == contact.email
        puts "Contacts with this address: #{contact.contact_id} #{contact.full_name}"
        contact
      end
    end
    when "note"
    @@contacts.each do |contact|
      if value == contact.note
        puts "Contacts with this email: #{contact.contact_id} #{contact.full_name}"
        contact
      end

    end
  end

end




  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name
    "#{@first_name} #{@last_name}"

  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

end

  # Feel free to add other methods here, if you need them.


puts meera = Contact.create("Meera","Sharma", "coolemail", "cool")
puts meera.inspect

puts jaya = Contact.create("Jaya","Sharma", "email", "weird")
puts jaya.inspect

puts vani = Contact.create("Vani","Sharma", "email", "weird")
puts meera2 = Contact.create("Meera","Sharma", "stuff", "weird")
puts meera3 = Contact.create("Meera","Cool", "email", "nice")

puts "!!!!!!"
puts Contact.find(2)

puts "*********"

puts Contact.find_by("first_name", "Meera")
puts Contact.find_by("email", "weird")



=begin

case attrib

when "first_name"
  @@contact.each do |contact|
    if value == contact.first_name
      puts "Contacts with this first name: contact.full_name"
      contact
    end


when "last_name"
@@contact.each do |contact|
  if value == contact.last_name
    puts "Contacts with this last name: contact.full_name"
    contact
  end

when "email"
@@contact.each do |contact|
  if value == contact.email
    puts "Contacts with this email: contact.full_name"
    contact
  end
when "note"
@@contact.each do |contact|
  if value == contact.note
    puts "Contacts with this email: contact.full_name"
    contact
  end

end



if attrib == "first_name" && value == contact.first_name
  #if the attribute is the first name, I want it to serch for the first name using the first name method
  puts "#{contact.contact_id} #{contact.full_name}"


elsif attrib = "last_name" && value == contact.last_name
  puts "#{contact.contact_id} #{contact.full_name}"


elsif attrib = "email" && value == contact.email
  puts "#{contact.contact_id} #{contact.full_name}"

elsif attrib = "note" && value == contact.note
  puts "#{contact.contact_id} #{contact.full_name}"

end
=end
