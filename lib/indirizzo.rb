require 'indirizzo/map'
require 'indirizzo/number_map'
require 'indirizzo/constants'
require 'indirizzo/address'

module Indirizzo

  ##
  # === Description
  # Parses +text+ and returns an Indirizzo::Address object
  #
  # === Usage
  # Indirizzo.parse '123 Main Street, City, ST 12345'

  def self.parse text
    Address.new text
  end

end

