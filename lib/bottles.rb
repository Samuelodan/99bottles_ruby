# frozen_string_literal: true

require_relative './bottle_number'
require_relative './bottle_number0'

class Bottles
  def verse(num)
    bottle_number = bottle_number_for(num)
    next_bottle_number = bottle_number_for(bottle_number.successor)

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

  def bottle_number_for(num)
    case num
    when 0
      BottleNumber0
    else
      BottleNumber
    end.new(num)
  end
end
