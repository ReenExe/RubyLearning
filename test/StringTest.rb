class StringTest < Test::Unit::TestCase

    def testEqual
        assert_equal('value', 'value')
    end

    def testGetIndex
        name = 'Reen';
        assert_equal(name[0], 'R')
        assert_equal(name[-1], 'n')
    end

end