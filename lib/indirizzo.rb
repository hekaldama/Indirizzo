# TODO I don't think we need set
require 'set'
require 'indirizzo/map'
require 'indirizzo/constants'
require 'indirizzo/address'
require 'indirizzo/numbers'

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

