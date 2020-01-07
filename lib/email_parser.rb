# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :address
  
  def initialize(address)
    @address = address
  end
  
  def parse
   emails = @address.split 
   parsed_emails = emails.collect do |list|
    list.chomp(",")
  end
    parsed_emails.uniq
  end
end