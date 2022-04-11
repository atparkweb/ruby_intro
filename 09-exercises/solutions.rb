# frozen_string_literal: true

##
# Exercise solutions
module Exercises
  ##
  # Use the `each` method of Array to iterate over `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`,
  # and print out each value
  def solution_one
    (1..10).each { |num| puts num }
  end

  ##
  # Same as above, but only print out values greater than 5.
  def solution_two
    (1..10).each { |num| puts num if num > 5 }
  end

  ##
  # Now, using the same array from #2, use the `select` method to extract all odd numbers
  # into a new array.
  def solution_three
    (1..10).select(&:odd?)
  end
end
