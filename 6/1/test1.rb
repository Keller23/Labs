# frozen_string_literal: true

require './main1.rb'
require 'minitest/autorun'
# Test class
class Test < MiniTest::Unit::TestCase
  def test_1
    assert_in_delta(0.9900, count(-4), 1e-4)
  end

  def test_2
    assert_in_delta(0.99684, count(-5), 1e-5)
  end
end
