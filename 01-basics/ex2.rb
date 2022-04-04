# frozen_string_literal: true

# Use the modulo operator, division, or a combination of both to take a 4 digit number
# and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
unless ARGV.length == 1
  puts 'Usage: ruby ex2.rb <integer>'
  exit
end

number = ARGV[0].to_i

raise 'Number must be less than 10,000' if number > 9999

# Add spaces after key to align output
def pad_key(key)
  result = []
  (10 - key.length).times { result.push(' ') }
  result.join('')
end

{
  thousands: number / 1000,
  hundreds: number % 1000 / 100,
  tens: number % 100 / 10,
  ones: number.remainder(10)
}.each { |key, value| puts "#{key}:#{pad_key(key)} #{value}" }
