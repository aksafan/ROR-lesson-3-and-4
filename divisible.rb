# frozen_string_literal: true

def divide
  arr = []
  # Prefer `each`` here instead of `for`` to minimize side effects and use more idiomatic ruby way
  (1...100).each do |i|
    # used `(i % 2).zero?` instead of `i.even?` to make all checks be the same style
    arr.push(i) if (i % 2).zero? || (i % 3).zero? || (i % 5).zero?
  end

  arr
end

puts divide
