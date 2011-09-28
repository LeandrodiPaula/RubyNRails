require 'test/unit'

def check_number(value)

  if check_fizz!(value)
  	'fizz'
  elsif check_buzz!(value)
  	'buzz'
  else
  	value
  end
   
end

def check_fizz!(value)
   value % 3 == 0
end

def check_buzz!(value)
   value % 5 == 0
end

def fizz_buzz(value)

  1.upto(value) do |i|
    puts check_number(i)
end

end

class FizzBuzzTest < Test::Unit::TestCase

  def test_check_number
  	assert_equal 1, check_number(1)
  	assert_equal 2, check_number(2)
  	assert_equal 4, check_number(4)
  end

  def test_check_number_case_fizz
  	assert_equal 'fizz', check_number(3)
  	assert_equal 'fizz', check_number(6)
  	assert_equal 'fizz', check_number(9)
  end

  def test_check_buzz
  	assert_equal 'buzz', check_number(5)
  end

  def test_check_fizz!
  	assert check_fizz!(9)
    assert !check_fizz!(10)
  end

  def test_check_buzz!
    assert !check_buzz!(11)
  end

  def test_fizz_buzz
    assert fizz_buzz(10)
  end

end