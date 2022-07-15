# frozen_string_literal: true

class BottleNumber
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def successor
    num - 1
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def container
    if num == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoun
    if num == 1
      "it"
    else
      "one"
    end
  end

  def count
    num.to_s
  end

  def to_s
    "#{count} #{container}"
  end
end
