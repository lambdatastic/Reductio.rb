require "minitest/autorun"
require "minitest/test"
require_relative "../lib/reductio"

class ReductioTest < Minitest::Test
  def test_it_defines_something
    assert Reductio, 'Reductio should exist'
  end

  def test_add_does_what_we_expect
    assert_equal Reductio::Add.(1, 1), 2, '1 + 1 should equal 2'
  end

  def test_add_is_curried
    inc = Reductio::Add.(1)
    assert_equal inc.(1), 2, '1 incremented should equal 2'
  end

end
