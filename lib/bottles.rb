# frozen_string_literal: true

class Bottles
  def verse(num)
    case num
    when 0
      "#{count(num).capitalize} #{container(num)} of beer on the wall, " \
      "#{count(num)} #{container(num)} of beer.\n" \
      "#{action(num)}, " \
      "99 #{container(num - 1)} of beer on the wall.\n"
    else
      "#{count(num).capitalize} #{container(num)} of beer on the wall, " \
      "#{count(num)} #{container(num)} of beer.\n" \
      "#{action(num)}, " \
      "#{count(num - 1)} #{container(num - 1)} of beer on the wall.\n"
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

  def verses(num1, num2)
    diff = (num1 - num2) + 1
    result = ''
    start = num1
    diff.times do |count|
      result += verse(start)
      result += "\n" if (diff - count) > 1
      start -= 1
    end
    result
  end

  def song
    verses(99, 0)
  end
end
