#frozen_string_literal: true

require_relative './bottle_number'

class BottleNumber1 < BottleNumber
  def container
    'bottle'
  end

  def pronoun
    "it"
  end

  def self.handle?(num)
    num == 1
  end

  BottleNumber.register(self)
end