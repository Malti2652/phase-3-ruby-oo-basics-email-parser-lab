# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(emails_string)
    @emails_string = emails_string
  end

  def parse
    # Split the input string by commas and/or spaces, then remove any leading/trailing whitespace
    # and any empty strings (e.g. due to consecutive commas or spaces)
    # Finally, remove any duplicates using the uniq method
    @emails_string.split(/[,\s]+/).map(&:strip).reject(&:empty?).uniq
  end
end
