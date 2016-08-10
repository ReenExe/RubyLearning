class RangeTest < Test::Unit::TestCase
  def testConvert
    range = 1..6
    assert_equal(range.to_a, [1, 2, 3, 4, 5, 6])
    assert_equal(range.exclude_end?, false)

    range = 1...6
    assert_equal(range.to_a, [1, 2, 3, 4, 5])
    assert_equal(range.exclude_end?, true)
  end
end