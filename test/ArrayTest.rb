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

  def testPush
    array = []

    array << 1
    array << 2 << 3
    array << 5 << 6 << 7

    assert_equal(array, [1, 2, 3, 5, 6, 7])
  end

  def testLength
    array = []
    assert_equal(array.length, 0)

    array = [1]
    assert_equal(array.length, 1)
  end

  def testJoin
    array = [1, 2, 3]
    assert_equal(array.join, '123')
    assert_equal(array.join(' '), '1 2 3')
  end

end