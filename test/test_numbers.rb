require 'test_helper'

include Indirizzo

class TestAddress < Test::Unit::TestCase
  def test_number_to_cardinal
    assert_equal 'one', CARDINALS[1]
    assert_equal 'ten', CARDINALS[10]
    assert_equal 'twelve', CARDINALS[12]
    assert_equal 'eighty-seven', CARDINALS[87]
  end

  def test_cardinal_to_number
    assert_equal 1,   CARDINALS['one']
    assert_equal 1,   CARDINALS['One']
    assert_equal 10,  CARDINALS['ten']
    assert_equal 12,  CARDINALS['twelve']
    assert_equal 87,  CARDINALS['eighty-seven']
    assert_equal 87,  CARDINALS['eighty seven']
    assert_equal 87,  CARDINALS['eightyseven']
  end

  def test_number_to_ordinal
    assert_equal 'first', ORDINALS[1]
    assert_equal 'second', ORDINALS[2]
    assert_equal 'tenth', ORDINALS[10]
    assert_equal 'twelfth', ORDINALS[12]
    assert_equal 'twentieth', ORDINALS[20]
    assert_equal 'twenty-second', ORDINALS[22]
    assert_equal 'eighty-seventh', ORDINALS[87]
  end

  def test_ordinal_to_number
    assert_equal 1,   ORDINALS['first']
    assert_equal 1,   ORDINALS['First']
    assert_equal 10,  ORDINALS['tenth']
    assert_equal 12,  ORDINALS['twelfth']
    assert_equal 73,  ORDINALS['seventy-third']
    assert_equal 74,  ORDINALS['seventy  fourth']
    assert_equal 75,  ORDINALS['seventyfifth']
    assert_equal nil, ORDINALS['seventy-eleventh']
  end
end
