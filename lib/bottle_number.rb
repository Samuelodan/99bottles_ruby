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
    'bottles'
  end

  def pronoun
    "one"
  end

  def count
    num.to_s
  end

  def to_s
    "#{count} #{container}"
  end
end
