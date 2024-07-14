# frozen_string_literal: true

def hash_to_array()
  pairs = {}
  puts 'Please enter 5 key-value pairs below, one by one, dash (-) separated. E.g. "1st_key-1st_value".'
  i = 1
  while pairs.length < 5 do
    puts "Please enter key-value pair # #{i}."
    
    pair = gets.chomp

    if pair.length.zero?
      puts 'Please enter non-empty key-value pair.'
      next
    end

    key, value = pair.split('-', 2)
    if key.nil? || key.empty? || value.nil? || value.empty?
      puts 'Please enter key-value pair, dash (-) separated. E.g. "1st_key-1st_value".'
      next
    end

    if pairs.has_key?(key) 
      puts "Key \"#{key}\" is already exists. Please enter a unique key."
      next
    end
    pairs[key] = value
    i += 1
  end

  puts pairs.keys
  puts pairs.values
end

hash_to_array()
