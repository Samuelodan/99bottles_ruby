# frozen_string_literal: true

class BottleVerse
  attr_reader :bottle_number

  def initialize(num)
    @bottle_number = num
  end

  def lyrics
    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer.\n" \
      "#{bottle_number.action}, " \
      "#{bottle_number.successor} of beer on the wall.\n"
  end

  def self.lyrics(num)
    new(BottleNumber.for(num)).lyrics
  end
end
