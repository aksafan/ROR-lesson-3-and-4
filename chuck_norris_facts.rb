# frozen_string_literal: true

require 'faker'

is_end = false
until is_end
  puts 'Do you want to know a fact about Chuck Norris?'
  puts 'Type "yes" if so and "no" or any other character to close a program.'
  answer = gets.chomp
  if answer == 'yes'
    puts Faker::ChuckNorris.fact
  else
    is_end = true
  end
end
