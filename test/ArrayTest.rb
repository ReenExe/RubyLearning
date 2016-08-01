class ArrayTest < Test::Unit::TestCase

  def testConcat
    concat = [1] + [2] + [3]

    assert_equal(concat, [1, 2, 3])
  end

  def testIntersect
    intersect = [1, 2, 3, 4, 5] & [1, 3, 5, 7, 9]

    assert_equal(intersect, [1, 3, 5])
  end

  def testUnion
    intersect = [1, 2, 3, 4, 5] | [1, 3, 5, 7, 9]

    assert_equal(intersect, [1, 2, 3, 4, 5, 7, 9])
  end

end