# frozen_string_literal: true
require_relative './bottle_number'


class Bottles
  def verse(num)
    "#{count(num).capitalize} #{container(num)} of beer on the wall, " \
      "#{count(num)} #{container(num)} of beer.\n" \
      "#{action(num)}, " \
      "#{count(successor(num))} #{container(successor(num))} of beer on the wall.\n"
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
