unless ARGV.length == 2 
  puts 'Wrong number of arguments.'
  puts 'Usage: ruby multiply.rb <number> <number>'
end

def multiply(num1, num2)
  num1 * num2
end

x, y = ARGV
puts multiply(x.to_i, y.to_i)
