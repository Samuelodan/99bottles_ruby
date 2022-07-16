# frozen_string_literal: true

require_relative './bottle_number'
require_relative './bottle_number0'
require_relative './bottle_number1'
require_relative './bottle_number6'
require_relative './bottle_verse'

class Bottles
  def verse(num)
    BottleVerse.new(num).lyrics
  end

  def verses(num1, num2)
    num1.downto(num2).map { |num| verse(num) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
