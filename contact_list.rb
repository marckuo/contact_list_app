require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList

end


  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.

if ARGV.empty?
  puts "Here is a list of available commands:\nnew - Create new contact\nlist - List all contacts\nshow - Show a contact\nsearch - Search for a contact"
else

  case ARGV[0]
  when 'new'
    p "Please enter contact's Name:"
    name = STDIN.gets
    p "Please enter contact's E-mail:"
    email = STDIN.gets
    Contact.create(name,email)
  when 'list'
    p Contact.all
  when 'show'
    p "Please enter contact id:"
    id = STDIN.gets.to_i
    p Contact.show(id-1)
  when 'search'
    p "Please enter term for search"
    term = STDIN.gets.downcase
    p Contact.search(term)
  end
end
