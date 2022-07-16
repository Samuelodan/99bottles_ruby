# frozem_string_literal: true
require_relative './bottle_number'

class BottleNumber0 < BottleNumber
  def successor
    BottleNumber.for(99)
  end

  def action
    'Go to the store and buy some more'
  end

  def count
    'no more'
  end

  def self.handles?(num)
    num == 0
  end

  BottleNumber.register(self)
end
