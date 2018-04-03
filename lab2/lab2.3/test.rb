#!/usr/bin/env ruby
require 'minitest/autorun'
load 'utils'

##
# This class does test on count_occurence fun
#
#
class TestFun < Minitest::Test
  def setup
    @result1 = to_map("a(3)")

    @result2 = to_map("ascc(1)")

    @result3 = to_map("%(5)")

    @result4 = to_map("")



    @result5 = count_occ("aaa")

    @result6 = count_occ("ascc")

    @result7 = count_occ("%%%%%%")

    @result8 = count_occ("")


  end

  def test_fun

    assert_equal(@result1,["a","3"])
    assert_equal(@result2,["ascc","1"])
    assert_equal(@result3,["%","5"])
    assert_equal(@result4, [])

    assert_equal(@result5,{"a"=>3})
    assert_equal(@result6,{"a"=>1, "s"=>1, "c"=>2})
    assert_equal(@result7,{"%"=>6})
    assert_equal(@result8, {})

  end
end