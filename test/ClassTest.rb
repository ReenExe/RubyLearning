class ClassTest < Test::Unit::TestCase

  def test_class
    assert_equal(1.class, Fixnum)
    assert_equal(1.0.class, Float)
    assert_equal('string'.class, String)
    assert_equal(false.class, FalseClass)
    assert_equal(true.class, TrueClass)
    assert_equal(nil.class, NilClass)
  end

end