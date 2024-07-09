# frozen_string_literal: true

def do_calc
  result = yield
  puts result
end

do_calc { 7 + 9 }

do_calc { 7 * 9 }
