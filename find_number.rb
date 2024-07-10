def find_number(number = rand(1..100))
  puts 'Lets guess a number from 1 to 100.'

  is_guessed = false

  until is_guessed == true
    puts 'What is your guess?'
    guess_number = gets.chomp.to_i
    next puts 'The guess number is not a number!' if guess_number.zero?
    next puts 'The guess number is out of range 1-100!' unless guess_number.between?(1, 100)

    if guess_number == number
      puts "Yes, you are right! The number is #{number}"
      is_guessed = true
    elsif guess_number > number
      puts 'Your number is to high.'
    else
      puts 'Your number is to low.'
    end
  end

  puts "Do you want to play again? Type 'yes' if so, or 'no' if not."
  find_number if gets.chomp == 'yes'
end

find_number
