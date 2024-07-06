require_relative 'store_inventory'

class Produce < Inventory
    attr_accessor :wet_wall

    def initialize(item, stock, identifier, department, wet_wall = false)
        super(item, stock, identifier, department)
        @wet_wall = wet_wall
    end
    def to_s
        super + ", Wet Wall: #{@wet_wall}"
    end
    
    end