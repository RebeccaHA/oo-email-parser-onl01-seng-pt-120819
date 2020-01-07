# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  attr_accessor :address, :csv_emails
  
  def initialize(address)
    @address = address
    @csv_emails = csv_emails
  end
  
  def parse
    @csv_emails.split.collect do |address|
      address.split(",")
    end
    address.uniq
  end
  binding.pry
end