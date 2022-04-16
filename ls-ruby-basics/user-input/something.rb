loop do
  puts '>> Do you want me to print something? (y/n)'
  ans = gets.chomp.downcase

  if ans == 'y'
    puts 'something'
    break
  elsif ans == 'n'
    break
  else
    puts '>> Invalid input! Please enter y or n'
  end
end
