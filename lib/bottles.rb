# frozen_string_literal: true

require_relative './bottle_number'
require_relative './bottle_number0'
require_relative './bottle_number1'

class Bottles
  def verse(num)
    bottle_number = BottleNumber.for(num)
    next_bottle_number = BottleNumber.for(bottle_number.successor)

    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer.\n" \
      "#{bottle_number.action}, " \
      "#{next_bottle_number} of beer on the wall.\n"
  end

  def verses(num1, num2)
    num1.downto(num2).map { |num| verse(num) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
