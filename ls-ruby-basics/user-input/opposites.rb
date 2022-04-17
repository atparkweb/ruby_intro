def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def valid_inputs?(num_1, num_2)
  # use XOR operator to make sure at least one number is negative
  num_1.negative? ^ num_2.negative?
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    input = gets.chomp
    return input.to_i if valid_number?(input)

    puts '>> Invalid input. Only non-zero integers are allowed.'
  end

end

num_1 = nil
num_2 = nil
loop do
  num_1 = read_number
  num_2 = read_number

  break if valid_inputs?(num_1, num_2)

  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

result = num_1 + num_2
puts "#{num_1} + #{num_2} = #{result}"
