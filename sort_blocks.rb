# frozen_string_literal: true

class Book
  attr_reader :author, :title, :count

  def initialize(author, title, count)
    @author = author
    @title = title
    @count = count
  end

  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array << Book.new('Beatrice Potter', 'Peter Rabbit', 25)
book_array << Book.new('Henry Fielding', 'Tom Jones', 12)
book_array << Book.new('Bob Woodward', "All the President's Men", 30)

puts 'Sorting alphabetically by author'

new_array = book_array.sort do |a, b|
  author1 = a.author.downcase
  author2 = b.author.downcase

  author1 <=> author2
  # if author1 > author2
  #   1
  # elsif author1 < author2
  #   -1
  # else
  #   0
  # end
end
puts new_array

puts 'Sorting alphabetically by title'
new_array2 = book_array.sort do |a, b|
  a.title <=> b.title
end
puts new_array2

puts 'Sorting numerically by copies'
book_array.sort do |a, b|
  a.count <=> b.count
end.tap { |x| puts x } # trying a new feature for me here

puts 'Sorting numerically by copies with _1'
book_array.sort do |a, b|
  a.count <=> b.count
end.tap { puts _1 } # trying a new feature for me here
