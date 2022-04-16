#frozen_string_literal: true

def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps(ARGV[0])
