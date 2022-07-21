# frozen_string_literal: true

require_relative './bottle_number'

class BottleNumber1 < BottleNumber
  def container
    'bottle'
  end

  def pronoun
    'it'
  end

  def self.handles?(num)
    num == 1
  end
end
