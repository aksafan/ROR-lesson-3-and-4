# frozen_string_literal: true

class Sum1
  attr_accessor :total

  def initialize(first_param, second_param)
    @total = first_param + second_param
  end
end

class Sum2
  @a
  @b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def new_total
    @a + @b
  end
end

sum1 = Sum1.new(5, 6)
puts sum1.total

sum2 = Sum2.new(5, 6)
puts sum2.new_total
