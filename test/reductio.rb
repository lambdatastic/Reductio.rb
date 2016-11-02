require "minitest/autorun"
require_relative "../lib/reductio"

R = Reductio

class ReductioTest < Minitest::Test
  def test_it_defines_something
    assert R, 'Reductio should exist'
  end

  def test_add_does_what_we_expect
    assert_equal R::Add.(1, 1), 2, '1 + 1 should equal 2'
  end

  def test_add_is_curried
    inc = R::Add.(1)
    assert_equal inc.(1), 2, '1 incremented should equal 2'
  end

end
