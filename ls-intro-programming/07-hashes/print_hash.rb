monster = { name: 'Dracula', instrument: 'Guitar', age: 400 }

puts 'Print keys...'
monster.each_key { |k| puts k }

puts 'Print values...'
monster.each_value { |v| puts v }

puts 'Print key:value'
monster.each { |k, v| puts "#{k}: #{v}" }
