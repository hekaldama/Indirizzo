module Indirizzo
  class Map < Hash
    # The Map class provides a two-way mapping between postal abbreviations
    # and their fully written equivalents.
    #attr_accessor :partial
    attr_accessor :regexp
    def self.[] (*items)
      hash = super(*items)
      hash.build_match
      hash.keys.each {|k| hash[k.downcase] = hash.fetch(k)}
      hash.values.each {|v| hash[v.downcase] = v}
      hash.freeze
    end
    def build_match
      @regexp = Regexp.new(
        '\b(' + [keys,values].flatten.join("|") + ')\b',
        Regexp::IGNORECASE)
    end
    def key? (key)
      super(key.downcase)
    end
    def [] (key)
      super(key.downcase)
    end
  end
end


