# The NumberMap class provides a means for mapping ordinal
# and cardinal number words to digits and back.
module Indirizzo
  class NumberMap < Hash
    attr_accessor :regexp
    def self.[] (array)
      nmap = self.new({})
      array.each {|item| nmap << item } 
      nmap.build_match
      nmap
    end
    def initialize (array)
      @count = 0
    end
    def build_match
      @regexp = Regexp.new(
        '\b(' + keys.flatten.join("|") + ')\b',
        Regexp::IGNORECASE)
    end
    def clean (key)
      key.is_a?(String) ? key.downcase.gsub(/\W/o, "") : key
    end
    def <<(item)
      store clean(item), @count
      store @count, item
      @count += 1
    end
    def [] (key)
      super(clean(key))
    end
  end
end

