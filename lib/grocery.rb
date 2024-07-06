# lib/grocery.rb
require_relative 'store_inventory'

class Grocery < Inventory
    attr_accessor :shelf_life

    def initialize(item, stock, identifier, department, shelf_life = "Unknown")
        super(item, stock, identifier, department)
        @shelf_life = shelf_life
    end

    def to_s
        super + ", Shelf life: #{@shelf_life}"
    end

    def self.start_inventory
        puts "Enter the Item name: "
        item_name = gets.chomp
        puts "Enter the Amount in stock: "
        stock_amount = gets.chomp.to_i
        puts "Enter the section identifier: "
        id = gets.chomp.upcase
    
        puts "Enter the shelf life of the item: "
        shelf_life = gets.chomp
    
        Grocery.new(item_name, stock_amount, id, "Grocery", shelf_life)
      end
    end
    

