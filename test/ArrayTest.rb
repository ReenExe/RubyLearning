class ArrayTest < Test::Unit::TestCase

  def testConcat
    concat = [1] + [2] + [3] + [1] + [2]

    assert_equal(concat, [1, 2, 3, 1, 2])
  end

  def testIntersect
    intersect = [1, 2, 3, 4, 5] & [1, 3, 5, 7, 9]

    assert_equal(intersect, [1, 3, 5])
  end

  def testIntersectUnique
    intersect = [1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3] & [1, 2, 3]

    assert_equal(intersect, [1, 2, 3])
  end

  def testUnion
    union = [1, 2, 3, 4, 5] | [1, 3, 5, 7, 9]

    assert_equal(union, [1, 2, 3, 4, 5, 7, 9])
  end

  def testUnionUnique
    union = [1, 2, 3, 2, 1] | [1, 3, 5, 7, 9]

    assert_equal(union, [1, 2, 3, 5, 7, 9])
  end

end