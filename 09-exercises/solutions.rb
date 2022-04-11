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
end
