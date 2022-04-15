# frozen_string_literal: true

##
# Exercise solutions
module Exercises
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
    arr.select { |num| num % 2 != 0 }

    ## 4
    # Append `11` to the end of the original array. Prepend `0` to the beginning.
    arr.push(11)
    arr.unshift(0)

    ## 5
    # Get rid of `11`. And append a `3`.
    arr.pop
    arr.push(3)

    ## 6
    # Get rid of duplicates without specifically removing any one value.
    arr.uniq!

    ## 7
    # What is the difference between an Array and Hash?
    # A: A Hash uses a key to reference a value to store items, an Array uses numeric indexes.

    ## 8
    # Create a Hash, with one key-value pair, using both Ruby syntax styles.
    hash_one = { :name => 'Andy'}
    hash_two = { name: 'Andy' }
  end
end
