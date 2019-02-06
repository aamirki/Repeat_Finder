require 'test/unit'
require './repeat_finder'

class Repeat_Finder_Test < Test::Unit::TestCase

  @@repeat = Repeat_Finder.new


  def test_naive_recursion_1
    assert_equal(@@repeat.naive_recursion([1, 7, 1, 8, 9, 1, 1], 1), 4)
  end

  def test_naive_recursion_2
    assert_equal(@@repeat.naive_recursion([1], 1), 1)
  end

  def test_naive_recursion_3
    assert_equal(@@repeat.naive_recursion([], 1), 0)
  end

  def test_naive_iteration_1
    assert_equal(@@repeat.naive_iteration([1, 7, 1, 8, 9, 1, 1], 1), 4)
  end

  def test_naive_iteration_2
    assert_equal(@@repeat.naive_iteration([1], 1), 1)
  end

  def test_naive_iteration_3
    assert_equal(@@repeat.naive_iteration([], 1), 0)
  end

  def test_efficient_recursion_1
    assert_equal(@@repeat.efficient_recursion([1, 1, 1, 1, 7, 8, 9], 1), 4)
  end

  def test_efficient_recursion_2
    assert_equal(@@repeat.naive_recursion([1], 1), 1)
  end

  def test_efficient_recursion_3
    assert_equal(@@repeat.naive_recursion([], 1), 0)
  end

  def test_efficient_iteration_1
    assert_equal(@@repeat.naive_iteration([1, 1, 1, 1, 7, 8, 9], 1), 4)
  end

  def test_efficient_iteration_2
    assert_equal(@@repeat.naive_iteration([1], 1), 1)
  end

  def test_efficient_iteration_3
    assert_equal(@@repeat.naive_iteration([], 1), 0)
  end

end