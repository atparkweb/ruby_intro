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
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    arr.each { |num| puts num }

    ## 2
    # Same as above, but only print out values greater than 5.
    arr.each { |num| puts num if num > 5 }

    ## 3
    # Now, using the same array from #2, use the `select` method to extract all odd numbers
    # into a new array.
    result = arr.select { |num| num % 2 != 0 }
    test(result, [1, 3, 5, 7, 9], '3')

    ## 4
    # Append `11` to the end of the original array. Prepend `0` to the beginning.
    arr.push(11)
    arr.unshift(0)
    test(arr, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], '4')

    ## 5
    # Get rid of `11`. And append a `3`.
    arr.pop
    arr.push(3)
    test(arr, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3], '5')

    ## 6
    # Get rid of duplicates without specifically removing any one value.
    arr.uniq!
    test(arr, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], '6')

    ## 7
    # Q: What is the difference between an Array and Hash?
    # A: A Hash uses a key to reference a value to store items, an Array uses numeric indexes.

    ## 8
    # Create a Hash, with one key-value pair, using both Ruby syntax styles.
    hash_one = { :name => 'Andy'}
    hash_two = { name: 'Andy' }
    test(hash_one, hash_two, '8')

    ## 9
    # Suppose you have a hash h = { a:1, b:2, c:3, d:4 }
    hash = { a: 1, b: 2, c: 3, d: 4 }

    # 1. Get the value of key `:b`
    test(hash[:b], 2, '9a')

    # 2. Add to this hash the key:value pair `{e:5}`
    hash[:e] = 5
    test(hash[:e], 5, '9b')

    # 3. Remove all key:value pairs whose value is less than 3.5
    hash.delete_if { |_, v| v < 3.5 }
    test(hash, { d: 4, e: 5 }, '9c')

    ## 10
    # Q: Can hash values be arrays? Can you have an array of hashes? (give examples)
    # A:

    ## 11
    # Given the following data structures, write a program that copies the information from the array into the empty
    # hash that applies to the correct person.
    contact_data = [
      ['joe@email.com', '123 Main st.', '555-123-4567'],
      ['sally@email.com', '404 Not Found Dr.', '123-234-3454']
    ]
    contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }

    info_to_map = lambda { |values|
      { email: values[0], address: values[1], phone: values[2] }
    }

    new_contacts = { 'Joe Smith' => info_to_map.call(contact_data[0]),
                     'Sally Johnson' => info_to_map.call(contact_data[1]) }
    test(new_contacts,
         {
           'Joe Smith' => { email: 'joe@email.com', address: '123 Main st.', phone: '555-123-4567' },
           'Sally Johnson' => { email: 'sally@email.com', address: '404 Not Found Dr.', phone: '123-234-3454' }
         }, '11')

    ## 12
    # Using the hash you created from the previous exercise, demonstrate how you would access Joe's email
    # and Sally's phone number.
    joe_email = contacts['Joe Smith'][:email]
    sally_phone = contacts['Sally Johnson'][:phone]

    test(joe_email, 'joe@email.com', '12')
    test(sally_phone, '123-234-3454', '12')

    ## 13
    # Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that
    # begin with an "s" in the following array.
    arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

    arr.delete_if { |str| str.start_with?('s') }

    test(arr, ['winter', 'ice', 'white trees'], '13')

    ## 14
    # Take the following array:
    a = ['white snow', 'winter wonderland', 'melting ice',
         'slippery sidewalk', 'salted roads', 'white trees']
    # and turn it into a new array that consists of strings containing one word.
    # (ex. ["white snow", etc...] ??? ["white", "snow", etc...].
    # Look into using Array's map and flatten methods, as well as String's split method.
    actual = (a.map { |word| word.split(' ') }).flatten
    expected = %w[white snow winter wonderland melting ice slippery sidewalk salted roads white trees]
    test(actual, expected, '14')
  end
end
