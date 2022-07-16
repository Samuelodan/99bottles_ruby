# frozem_string_literal: true
require_relative './bottle_number'

class BottleNumber6 < BottleNumber
  def container
    'six-pack'
  end

  def count
    '1'
  end

  def self.handles?(num)
    num == 6
  end

  BottleNumber.register(self)
end
