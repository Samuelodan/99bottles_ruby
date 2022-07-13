# frozen_string_literal: true

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
