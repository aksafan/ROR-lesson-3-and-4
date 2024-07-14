# frozen_string_literal: true

def hangman(word, arr_letters)
  word.chars.map { |letter| arr_letters.include?(letter) ? letter : '_' }.join
end

puts hangman 'bob', ['b']
puts hangman 'alphabet', %w[a h]
