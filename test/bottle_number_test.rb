gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bottle_number'
require_relative '../lib/bottle_number0'
require_relative '../lib/bottle_number1'
require_relative '../lib/bottle_number6'

class BottleNumberTest < Minitest::Test
  def test_teturns_correct_class_for_given_number
    # 0, 1, and 6 are special
    assert_equal BottleNumber0, BottleNumber.for(0).class
    assert_equal BottleNumber1, BottleNumber.for(1).class
    assert_equal BottleNumber6, BottleNumber.for(6).class

    # other numbers get the default

    assert_equal BottleNumber, BottleNumber.for(5).class
    assert_equal BottleNumber, BottleNumber.for(21).class
    assert_equal BottleNumber, BottleNumber.for(69).class
  end
end
