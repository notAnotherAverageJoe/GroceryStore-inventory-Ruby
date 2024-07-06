require_relative 'store_inventory'

class Dairy < Inventory
    attr_accessor :temperature_control_required

    def initialize(item, stock, identifier, department, temperature_control_required = false)
        super(item, stock, identifier, department)
        @temperature_control_required = temperature_control_required
      end
      
    def to_s
        super + ", Temperature Control Required: #{@temperature_control_required ? 'Yes' : 'No'}"
    end
end