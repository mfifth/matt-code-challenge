# frozen_string_literal: true

# Trevco Code Challenge
# Fill in the following function to make the test pass
# You can run test with: ruby -Ilib:test test/test_code_challenge.rb

require 'csv'

class CodeChallenge
  # Write a function that determines if a string starts with an upper-case letter A-Z.
  def start_with_uppercase_letter?(string)
    string.chars.first.match?(/[A-Z]/)
  end

  # Write a function that determines the area of a circle given the radius.
  def area_of_circle(radius)
    pi = 3.14
    squared = radius * radius
    return pi * squared
  end

  # Write a function to add up all the values in an array.
  def sum_array(array)
    value = 0
    array.each do |e|
      value += e if e.is_a? Integer
    end

    return value
  end

  # Write a function that determines if a string is a palindrome.
  def palindrome?(string)
    if string.reverse == string
      true
    else
      false
    end
  end

  # Write a recursive function to determine the Nth Fibonacci Number in the Fibonacci sequence
  def nth_fibonacci(nth)
    if nth < 9
      nth
    else
      nth_fibonacci(nth - 1) + nth_fibonacci(nth - 2)
    end
  end

  # Write a function that takes and array of numbers, multiplies each them by their index, and writes it's values to a csv.
  # The csv should have 3 columns. index, number, and sum.
  def write_array_to_csv(array)
    filename = 'test.csv' # test expects this filename
    CSV.open("test.csv", "w") do |csv|
      csv << ["index", "number", "sum"]

      array.each_with_index do |e, i|
        csv << [i, e, e * i]
      end
    end
  end
end
