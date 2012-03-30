require 'test_helper'

include Indirizzo

class TestConstants < Test::Unit::TestCase
  def initialize (*args)
    @map = Map[
      "Abbreviation" => "abbr",
      "Two words"    => "2words",
      "Some three words" => "3words"
    ]
    super(*args)
  end
  def test_class_constructor
    assert_kind_of Map, @map
    assert_kind_of Hash, @map
  end  
  def test_key
    assert @map.key?( "Abbreviation" )
    assert @map.key?( "abbreviation" )
    assert !(@map.key? "abbreviation?")
    assert @map.key?( "abbr" )
    assert @map.key?( "Two words" )
    assert @map.key?( "2words" )
  end
  def test_fetch
    assert_equal "abbr", @map["Abbreviation"]
    assert_equal "abbr", @map["abbreviation"]
    assert_nil @map["abbreviation?"]
    assert_equal "abbr", @map["abbr"]
    assert_equal "2words", @map["Two words"]
    assert_equal "2words", @map["2words"]
  end
#  def test_partial
#    assert @map.partial?( "Abbreviation" )
#    assert @map.partial?( "Two" )
#    assert @map.partial?( "two" )
#    assert !(@map.partial? "words")
#    assert @map.partial?( "Some" )
#    assert !(@map.partial? "words")
#    assert @map.partial?( "Some three" )
#    assert @map.partial?( "SOME THREE WORDS" )
#  end
  def test_constants
    assert_kind_of Map, DIRECTIONAL
    assert_kind_of Map, PREFIX_QUALIFIER
    assert_kind_of Map, SUFFIX_QUALIFIER
    assert_kind_of Map, PREFIX_TYPE
    assert_kind_of Map, SUFFIX_TYPE
    assert_kind_of Map, UNIT_TYPE
    assert_kind_of Map, NAME_ABBR
    assert_kind_of Map, STATE
  end
end
