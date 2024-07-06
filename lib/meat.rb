require_relative 'store_inventory'

class Meat < Inventory
  attr_accessor :diet

  def initialize(item, stock, identifier, department, diet = "Unknown")
    super(item, stock, identifier, department)
    @diet = diet
  end

  def to_s
    super + ", Diet: #{@diet}"
  end
end
