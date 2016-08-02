class AssignTest < Test::Unit::TestCase

  def testMulti
    a, b, c = [1, 2, 3]
    assert_equal(a, 1)
    assert_equal(b, 2)
    assert_equal(c, 3)
  end

  def testExchange
    a, b = 1, 2
    a, b = b, a
    assert_equal(a, 2)
    assert_equal(b, 1)
  end

  def testOther
    a, b = 1, 2, 3
    assert_equal(a, 1)
    assert_equal(b, 2)

    a, *b = 1, 2, 3
    assert_equal(a, 1)
    assert_equal(b, [2, 3])
  end

  def testWrap
    a, b, c = 1, [2, 3]
    assert_equal(a, 1)
    assert_equal(b, [2, 3])
    assert_equal(c, nil)

    a, (b, c) = 1, [2, 3]
    assert_equal(a, 1)
    assert_equal(b, 2)
    assert_equal(c, 3)

    a, (b, c) = 1, [2, [3]]
    assert_equal(a, 1)
    assert_equal(b, 2)
    assert_equal(c, [3])
  end

  def testCondition
    value = 7

    result = if value == 1 then
               'other'
             elsif value == 7
               'expect'
             else
               'other'
             end

    assert_equal(result, 'expect')
  end

  def testCase
    value = 7

    result = case value
               when 1
                 'other'
               when 7
                 'expect'
               else
                 'other'
             end

    assert_equal(result, 'expect')
  end

end