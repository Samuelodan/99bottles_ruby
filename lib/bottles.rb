# frozen_string_literal: true

class Bottles
  def verse(num)
    case num
    when 0
      'No more bottles of beer on the wall, ' \
      "no more bottles of beer.\n" \
      'Go to the store and buy some more, ' \
      "99 bottles of beer on the wall.\n"
    when 1
      "#{num} bottle of beer on the wall, " \
      "#{num} bottle of beer.\n" \
      'Take it down and pass it around, ' \
      "no more bottles of beer on the wall.\n"
    when 2
      "#{num} bottles of beer on the wall, " \
      "#{num} bottles of beer.\n" \
      'Take one down and pass it around, ' \
      "#{num - 1} bottle of beer on the wall.\n"
    else
      "#{num} bottles of beer on the wall, " \
      "#{num} bottles of beer.\n" \
      'Take one down and pass it around, ' \
      "#{num - 1} bottles of beer on the wall.\n"
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
