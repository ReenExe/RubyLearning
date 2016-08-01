class StringTest < Test::Unit::TestCase

    def testEqual
        assert_equal('value', 'value')
    end

    def testGetIndex
        name = 'ReenExe';
        assert_equal(name.length, 7);
        assert_equal(name.size, 7);

        assert_equal(name[0], 'R')
        assert_equal(name[6], 'e')
        assert_equal(name[-7], 'R')
        assert_equal(name[-1], 'e')

        assert_equal(name[0...7], 'ReenExe')

        assert_equal(name[8], nil)
        assert_equal(name[-8], nil)
    end

    def testMulti
        result = 'Good!' * 3
        assert_equal(result, 'Good!Good!Good!')
    end

end