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
      "#{count(num)} #{container(num)} of beer on the wall, " \
      "#{count(num)} #{container(num)} of beer.\n" \
      "Take #{pronoun(num)} down and pass it around, " \
      "#{count(num - 1)} #{container(num - 1)} of beer on the wall.\n"
    else
      "#{count(num)} #{container(num)} of beer on the wall, " \
      "#{count(num)} #{container(num)} of beer.\n" \
      "Take #{pronoun(num)} down and pass it around, " \
      "#{count(num - 1)} #{container(num - 1)} of beer on the wall.\n"
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
      num
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
