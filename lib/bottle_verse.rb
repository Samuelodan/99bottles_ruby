# frozen_string_literal: true

class BottleVerse
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def verse(num)
    bottle_number = BottleNumber.for(num)
    next_bottle_number = bottle_number.successor

    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer.\n" \
      "#{bottle_number.action}, " \
      "#{next_bottle_number} of beer on the wall.\n"
  end
end
