class AssignTest < Test::Unit::TestCase

  def test_multi
    a, b, c = [1, 2, 3]
    assert_equal(a, 1)
    assert_equal(b, 2)
    assert_equal(c, 3)
  end

  def test_exchange
    a, b = 1, 2
    a, b = b, a
    assert_equal(a, 2)
    assert_equal(b, 1)
  end

end