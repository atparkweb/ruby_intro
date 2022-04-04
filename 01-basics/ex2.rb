unless ARGV.length == 1
  puts "Usage: ruby ex2.rb [integer]"
  exit
end

number = ARGV[0].to_i

def pad_key(key)
  result = '';
  (10 - key.length).times { result << ' ' }
  result
end

{
  thousands: number / 1000,
  hundreds: number % 1000 / 100,
  tens: number % 100 / 10,
  ones: number.remainder(10)
}.each { |key, value| puts "#{key}:#{pad_key(key)} #{value}" }
