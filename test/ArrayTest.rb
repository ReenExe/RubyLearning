class ArrayTest < Test::Unit::TestCase
  def testConcat
    concat = [1] + [2] + [3]

    assert_equal(concat, [1, 2, 3])
  end
end