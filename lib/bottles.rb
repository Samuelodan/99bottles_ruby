# frozen_string_literal: true

class Bottles
  def verse(num)
    "#{count(num).capitalize} #{container(num)} of beer on the wall, " \
      "#{count(num)} #{container(num)} of beer.\n" \
      "#{action(num)}, " \
      "#{count(successor(num))} #{container(successor(num))} of beer on the wall.\n"
  end

  def successor(num)
    BottleNumber.new(num).successor(num)
  end

  def action(num)
    BottleNumber.new(num).action(num)
  end

  def container(num)
    BottleNumber.new(num).container(num)
  end

  def pronoun(num)
    BottleNumber.new(num).pronoun(num)
  end

  def count(num)
    BottleNumber.new(num).count(num)
  end

  def verses(num1, num2)
    num1.downto(num2).map { |num| verse(num) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end


class BottleNumber
  attr_reader :number

  def initialize(num)
    @num = num
  end

  def successor(num)
    if num == 0
      99
    else
      num - 1
    end
  end

  def action(num)
    if num == 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun(num)} down and pass it around"
    end
  end

  def container(num)
    if num == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoun(num)
    if num == 1
      "it"
    else
      "one"
    end
  end

  def count(num)
    if num == 0
      'no more'
    else
      num.to_s
    end
  end

end
