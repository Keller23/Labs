#!/usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'
require './main.rb'
# Test for part2
class Test2 < Test::Unit::TestCase
  def setup
    @numbers = Numbers.new(12, 10.0)
  end

  def test_1
    assert @numbers.is_a? Integers
  end

  def test_2
    assert_equal(2, @numbers.len)
  end
end
