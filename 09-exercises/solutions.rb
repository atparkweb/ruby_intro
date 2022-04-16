# frozen_string_literal: true

##
# Exercise solutions
module Exercises
  def test(actual, expected, title = 'test')
    puts actual == expected ? "#{title}: PASS" : "#{title}: FAIL"
  end

  def run
    ## 1
    # Use the `each` method of Array to iterate over `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`,
    # and print out each value
    puts 'One:'
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    arr.each { |num| puts num }

    ## 2
    # Same as above, but only print out values greater than 5.
    puts 'Two:'
    arr.each { |num| puts num if num > 5 }

    ## 3
    # Now, using the same array from #2, use the `select` method to extract all odd numbers
    # into a new array.
    puts 'Three:'
    result = arr.select { |num| num % 2 != 0 }
    test(result, [1, 3, 5, 7, 9], 'Exercise 3')

    ## 4
    # Append `11` to the end of the original array. Prepend `0` to the beginning.
    puts 'Four:'
    arr.push(11)
    arr.unshift(0)
    test(arr, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 'Exercise 4')

    ## 5
    # Get rid of `11`. And append a `3`.
    puts 'Five:'
    arr.pop
    arr.push(3)
    test(arr, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3], 'Exercise 5')

    ## 6
    # Get rid of duplicates without specifically removing any one value.
    puts 'Six:'
    arr.uniq!
    test(arr, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 'Exercise 6')

    ## 7
    # Q: What is the difference between an Array and Hash?
    # A: A Hash uses a key to reference a value to store items, an Array uses numeric indexes.

    ## 8
    # Create a Hash, with one key-value pair, using both Ruby syntax styles.
    puts 'Eight:'
    hash_one = { :name => 'Andy'}
    hash_two = { name: 'Andy' }
    test(hash_one, hash_two, 'Exercise 8')

    ## 9
    # Suppose you have a hash h = { a:1, b:2, c:3, d:4 }
    hash = { a: 1, b: 2, c: 3, d: 4 }
    puts 'Nine:'

    # 1. Get the value of key `:b`
    test(hash[:b], 2, 'Exercise 9a')

    # 2. Add to this hash the key:value pair `{e:5}`
    hash[:e] = 5
    test(hash[:e], 5, 'Exercise 9b')

    # 3. Remove all key:value pairs whose value is less than 3.5
    hash.delete_if { |_, v| v < 3.5 }
    test(hash, { d: 4, e: 5 }, 'Exercise 9c')

    ## 10
    # Q: Can hash values be arrays? Can you have an array of hashes? (give examples)
    # A:

    # 11
    # Given the following data structures, write a program that copies the information from the array into the empty
    # hash that applies to the correct person.
    contact_data = [
      ['joe@email.com', '123 Main st.', '555-123-4567'],
      ['sally@email.com', '404 Not Found Dr.', '123-234-3454']
    ]
    contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }

    def info_to_map(values, map)
      map[:email] = values[0]
      map[:address] = values[1]
      map[:phone] = values[2]
    end

    info_to_map(contact_data[0], contacts['Joe Smith'])
    info_to_map(contact_data[1], contacts['Sally Johnson'])
    test(contacts,
         {
           'Joe Smith' => { email: 'joe@email.com', address: '123 Main st.', phone: '555-123-4567' },
           'Sally Johnson' => { email: 'sally@email.com', address: '404 Not Found Dr.', phone: '123-234-3454' }
         })
  end
end
