class StringTest < Test::Unit::TestCase

  def testEqual
    assert_equal('value', 'value')
  end

  def testGetIndex
    name = 'ReenExe'
    assert_equal(name.length, 7)
    assert_equal(name.size, 7)

    assert_equal(name[0], 'R')
    assert_equal(name[6], 'e')
    assert_equal(name[-7], 'R')
    assert_equal(name[-1], 'e')

    assert_equal(name[0...7], 'ReenExe')
    assert_equal(name[0..8], 'ReenExe')

    assert_equal(name[0,7], 'ReenExe')
    assert_equal(name[0,2], 'Re')
    assert_equal(name[0,0], '')

    assert_equal(name[8], nil)
    assert_equal(name[-8], nil)
  end

  def testMulti
    result = 'Good!' * 3
    assert_equal(result, 'Good!Good!Good!')
  end

  def testIndex
    name = 'Alex'
    assert_equal(name.index('A'), 0)
    assert_equal(name.index('x'), 3)
    assert_equal(name.index('a'), nil)
    assert_equal(name.rindex('A'), 0)
    assert_equal(name.rindex('x'), 3)

    word = 'hello'
    assert_equal(word.index('l'), 2)
    assert_equal(word.rindex('l'), 3)
  end

  def testReverse
    assert_equal('this'.reverse, 'siht')
  end

  def testPush
    source = 'Little'
    source << ' ' << 'World' << ' ' << 'Born'
    assert_equal(source, 'Little World Born')
  end

  def testConcat
    source = 'Little' + 'World'
    assert_equal(source, 'LittleWorld')
  end

  def testCompare
    name = 'ReenExe'

    assert_equal(name.start_with?('Reen'), true)
    assert_equal(name.end_with?('Exe'), true)
    assert_equal(name.start_with?('reen'), false)
    assert_equal(name.end_with?('exe'), false)
  end

  def testSplit
    value = 'a, b, c'
    assert_equal(value.split, ['a,', 'b,', 'c'])
    assert_equal(value.split(', '), ['a', 'b', 'c'])
  end

  def testCount
    name = 'ReenExe'
    assert_equal(name.count('R'), 1)
    assert_equal(name.count('E'), 1)
    assert_equal(name.count('e'), 3)
  end

end