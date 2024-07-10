def guess_number
  puts 'Think of a number from 1 to 100. Lets guess it.'
  puts 'Please answer questions with "too low", "too high" or "correct".'

  is_guessed = false
  middle = 50
  start_number = 1
  end_number = 100

  until is_guessed == true
    puts "Is it #{middle}?"
    answer = gets.chomp
    unless ['too low', 'too high', 'correct'].include? answer
      next puts 'The answer is not valid. Please use "too low", "too high" or "correct"'
    end

    case answer
    when 'correct'
      is_guessed = true
    when 'too low'
      if middle == end_number
        puts 'You are lying!'
        is_guessed = true
      end
      start_number = middle
      middle = ((middle + end_number).to_f / 2).ceil
    when 'too high'
      if middle == start_number
        puts 'You are lying!'
        is_guessed = true
      end
      end_number = middle
      middle = ((start_number + middle).to_f / 2).floor
    end
  end

  puts 'Want to play again? Type "yes" if so, or "no" if not.'
  guess_number if gets.chomp == 'yes'
end

guess_number
