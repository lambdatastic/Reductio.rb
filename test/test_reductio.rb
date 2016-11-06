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

  def test_compose_does_what_we_expect
    inc = proc { |x| x + 1 }
    test_compose = Reductio::Compose.(inc, inc)

    assert_equal test_compose.(2), 4, 'composing two incs should add 2'
  end

  def test_compose_handles_nore_than_two_arguments
    inc = proc { |x| x + 1 }
    test_compose = Reductio::Compose.(inc, inc, inc)

    assert_equal test_compose.(2), 5, 'composing three incs should add 3'
  end
end
