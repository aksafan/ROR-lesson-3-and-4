# frozen_string_literal: true

def hash_to_array(hash)
  puts hash.keys
  puts hash.values
end

hash_to_array(
  {
    one: '1st_hash',
    two: '2nd_hash',
    three: '3rd_hash',
    four: '4th_hash',
    five: '5th_hash'
  }
)
