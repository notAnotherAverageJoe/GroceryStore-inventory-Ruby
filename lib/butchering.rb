require_relative 'store_inventory'
require_relative 'meat'

class Butchering < Meat
  attr_accessor :cut_type, :expiration_date

  def initialize(item, stock, identifier, department, diet = "Unknown", cut_type = "Unknown", expiration_date = "Unknown")
    super(item, stock, identifier, department, diet)
    @cut_type = cut_type
    @expiration_date = expiration_date
  end

  def to_s
    super + ", Cut Type: #{@cut_type}, Expiration Date: #{@expiration_date}"
  end
end
