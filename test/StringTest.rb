class StringTest < Test::Unit::TestCase

    def testEqual
        assert_equal('value', 'value')
    end

    def testGetIndex
        name = 'ReenExe';
        assert_equal(name.length, 7);
        assert_equal(name.size, 7);

        assert_equal(name[0], 'R')
        assert_equal(name[-1], 'e')
    end

end