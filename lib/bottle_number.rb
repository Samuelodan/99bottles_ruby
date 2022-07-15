# frozen_string_literal: true

class BottleNumber
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def successor
    BottleNumber.for(num - 1)
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

  def self.for(num)
    case num
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    when 6
      BottleNumber6
    else
      BottleNumber
    end.new(num)
  end
end
