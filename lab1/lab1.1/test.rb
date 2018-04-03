#!/usr/bin/env ruby
require 'minitest/autorun'
load 'main.rb'

class TestSum < Minitest::Test
  def setup
    @result1 = sum(2,2)

    @result2 = sum(Rational(1,3),2)
    @result3 = sum(Rational(1,3),Rational(1,3))
    @result4 = sum(-Rational(1,3),Rational(1,3))

    @result5 = sum(Complex(1,3),2)
    @result6 = sum(Complex(1,3),Complex(1,3))
    @result7 = sum(-Complex(1,3),Complex(1,3))

  end

  def test_sum

    assert_equal(@result1,4)

    assert_equal(@result2,Rational(7,3))
    assert_equal(@result3,Rational(2,3))
    assert_equal(@result4,0)

    assert_equal(@result5,Complex(3,3))
    assert_equal(@result6,Complex(2,6))
    assert_equal(@result7,0)

    # assert_equal(@result5,0)



  end
end