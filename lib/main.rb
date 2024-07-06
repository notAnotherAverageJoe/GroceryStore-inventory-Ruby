require_relative 'store_inventory'
require_relative 'seafood'
require_relative 'meat'
require_relative 'grocery'
require_relative 'produce'
require_relative 'bakery'
require_relative 'liquor'
require_relative 'dairy'
require_relative 'butchering'







def run
  inventory_item = Inventory.start_inventory
  puts inventory_item
end
   



