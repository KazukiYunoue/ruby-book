require 'minitest/autorun'
require './lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', 1.fizz_buzz
    assert_equal '2', 2.fizz_buzz
    assert_equal 'Fizz', 3.fizz_buzz
    assert_equal '4', 4.fizz_buzz
    assert_equal 'Buzz', 5.fizz_buzz
    assert_equal 'Fizz', 6.fizz_buzz
    assert_equal 'Fizz Buzz', 15.fizz_buzz
  end
end
