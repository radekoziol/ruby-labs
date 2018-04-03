#!/usr/bin/env ruby
require 'minitest/autorun'
load '1.rb'

class TestSum < Minitest::Test
  def setup
    @result1 = avg([1,3,4,3,2,1,3])

    @result2 = avg([1,3,1,3,2,1,2])

    @result3 = avg([1,2,3,4,5,6,7])

  end

  def test_sum

    assert_equal(@result1,[1.0, 4.0, 1.5])
    assert_equal(@result2,[1.0, 3.0, 2.5])
    assert_equal(@result3, [1.0])



  end
end