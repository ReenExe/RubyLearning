class ClassTest < Test::Unit::TestCase

  def testGetClass
    assert_equal(1.class, Fixnum)
    assert_equal(1.0.class, Float)
    assert_equal('string'.class, String)
    assert_equal(false.class, FalseClass)
    assert_equal(true.class, TrueClass)
    assert_equal(nil.class, NilClass)
    assert_equal([].class, Array)
    assert_equal({}.class, Hash)

    sequence = 1..2
    assert_equal(sequence.class, Range)

    sequence = 1...2
    assert_equal(sequence.class, Range)
  end

end