require_relative 'store_inventory'

class Bakery < Inventory
    attr_accessor :pastry_type, :gluten_free

    
    def initialize(item, stock, identifier, department, pastry_type ,gluten_free = false)
        super(item, stock, identifier, department)
        @pastry_type = pastry_type
        @gluten_free = gluten_free

    def to_s
        super + ", Pastry Type: #{@pastry_type}, Gluten Free: #{@gluten_free}"
    end

    def self.start_inventory
        puts "Enter the Item name: "
        item_name = gets.chomp
        puts "Enter the Amount in stock: "
        stock_amount = gets.chomp.to_i
        puts "Enter the section identifier: "
        id = gets.chomp.upcase
    

    
        Bakery.new(item_name, stock_amount, id, "Bakery", pastry_type, gluten_free)
      end

    end
end