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
    registry.find { |candidate| candidate.handles?(num) }.new(num)
  end

  def self.handles?(num)
    true
  end

  def self.inherited(candidate)
    register(candidate)
  end

  def self.registry
    @registry ||= [BottleNumber]
  end

  def self.register(candidate)
    registry.prepend(candidate)
  end

  BottleNumber.register(self)
end
