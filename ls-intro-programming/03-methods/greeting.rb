unless ARGV.length == 1
  puts 'Wrong number of arguments.'
  puts 'Usage: ruby greeting.rb <your-name>'
  exit
end

def greeting(name)
  "Hello, #{name}"
end

puts greeting(ARGV[0])
