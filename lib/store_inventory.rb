# lib/inventory.rb
class Inventory
    attr_accessor :item, :stock, :identifier, :department
  
    def initialize(item, stock, identifier, department)
      @item = item
      @stock = stock
      @identifier = identifier
      @department = department
    end
  
    def to_s
      "Item: #{@item}, Stock: #{@stock}, Identifier: #{@identifier}, Department: #{@department}"
    end

    def self.print_section_identifiers
        puts "Thank you for using our inventory management system. IDs available are:"
        puts "S - Seafood"
        puts "M - Meat"
        puts "G - Grocery"
        puts "P - Produce"
        puts "B - Bakery"
        puts "L - Liquor"
        puts "D - Dairy"




    end
  
    def self.start_inventory
      puts "Enter the Item name: "
      item_name = gets.chomp
      puts "Enter the Amount in stock: "
      stock_amount = gets.chomp.to_i
      self.print_section_identifiers
      puts "Enter the section identifier: "
      id = gets.chomp.upcase
  
      department = case id
                   when "S"
                     "Seafood"
                   when "G"
                     "Grocery"
                   when "M"
                     "Meat"
                   when "P"
                     "Produce"
                   when "B"
                     "Bakery"
                   when "L"
                     "Liquor"
                   when "D"
                     "Dairy"
                   else
                     "Unknown"
                   end
  
      if id == "S"
        puts "Enter the origin of the seafood: "
        origin = gets.chomp
        Seafood.new(item_name, stock_amount, id, department, origin)
      elsif id == "M"
        puts "Enter the diet of the animal: "
        diet = gets.chomp
        puts "Is this a butchered meat? (yes/no): "
        butchered_input = gets.chomp.downcase
      
        if butchered_input == "yes" || butchered_input == "y"
          puts "Enter the cut type: "
          cut_type = gets.chomp
          puts "Enter the expiration date (YYYY-MM-DD): "
          expiration_date = gets.chomp
          Butchering.new(item_name, stock_amount, id, department, diet, cut_type, expiration_date)
        else
          Meat.new(item_name, stock_amount, id, department, diet)
        end
      elsif id == "G"
        puts "Enter item shelf life: "
        shelf_life = gets.chomp
        Grocery.new(item_name, stock_amount, id,department, shelf_life)
      elsif id == "P"
        puts "Does the item require a wet wall? (yes/no): "
        wet_wall_input = gets.chomp.downcase
        wet_wall = case wet_wall_input
                   when "yes", "y"
                     true
                   else
                     false
                   end
                   Produce.new(item_name, stock_amount, id, department, wet_wall)
      elsif id == "B"
        puts "What type of pastry is it? (cake, cupcake, bread)"
        pastry_type= gets.chomp
        puts "Is this #{pastry_type}, gluten free? (yes/no): "
        gluten_input =gets.chomp.downcase
        gluten_free = case gluten_input
                      when "yes", "y"
                        true
                      else
                        false
                      end
                      Bakery.new(item_name, stock_amount, id, department, pastry_type, gluten_free)
      elsif id == "L"
        puts "Enter the alcohol content: "
        alcohol_content=gets.chomp.to_f
        Liquor.new(item_name, stock_amount, id, department, alcohol_content)
      elsif id == "D"
        puts "Does this item require controlled temperatures (yes/no): "
        temp_input = gets.chomp.downcase
        if (temp_input == "yes" || temp_input == "y" )
          temperature_control_required = true
        else
          temperature_control_required = false
        end
      
        Dairy.new(item_name, stock_amount, id, department, temperature_control_required)


      else
        Inventory.new(item_name, stock_amount, id, department)
      end

     

    end
  end
  