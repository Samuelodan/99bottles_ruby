# frozen_string_literal: true
require_relative './bottle_number'


class Bottles
  def verse(num)
    bottle_number = BottleNumber.new(num)
    next_bottle_number = BottleNumber.new(bottle_number.successor)
  
    "#{bottle_number.count.capitalize} #{bottle_number.container} of beer on the wall, " \
      "#{bottle_number.count} #{bottle_number.container} of beer.\n" \
      "#{bottle_number.action}, " \
      "#{next_bottle_number.count} #{next_bottle_number.container} of beer on the wall.\n"
  end

  def verses(num1, num2)
    num1.downto(num2).map { |num| verse(num) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  def successor(num)
    BottleNumber.new(num).successor
  end

  def action(num)
    BottleNumber.new(num).action
  end

  def container(num)
    BottleNumber.new(num).container
  end

  def count(num)
    BottleNumber.new(num).count
  end
end
