#!/usr/bin/env ruby
require 'minitest/autorun'
load 'utils'

##
# This class does test on count_occurence fun
#
#
class TestFun < Minitest::Test
  def setup
    @result1 = count_occurence(%W(as\n as\n as\n as\n))

    @result2 = count_occurence(%W(a\n \n \n as\n))

    @result3 = count_occurence([])

    @result4 = count_occurence(%W(..\n a\n ()\n a\n))

  end

  def test_fun

    assert_equal(@result1,{2 => 4})
    assert_equal(@result2,{1=>1, 0=>2, 2=>1})
    assert_equal(@result3,{})
    assert_equal(@result4, {2=>2, 1=>2})

  end
end