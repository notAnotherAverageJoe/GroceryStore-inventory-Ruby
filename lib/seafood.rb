# lib/seafood.rb
require_relative 'store_inventory'

class Seafood < Inventory
  attr_accessor :origin

  def initialize(item, stock, identifier, department, origin = "Unknown")
    super(item, stock, identifier, department)
    @origin = origin
  end

  def to_s
    super + ", Origin: #{@origin}"
  end

end
