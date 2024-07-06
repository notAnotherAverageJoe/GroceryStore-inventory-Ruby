require_relative 'store_inventory'

class Liquor < Inventory
    attr_accessor :alcohol_content

    def initialize(item, stock, identifier, department, alcohol_content = 0)
        super(item, stock, identifier, department)
        @alcohol_content = alcohol_content
      end

      def to_s
        super + ", Alcohol Content: #{@alcohol_content}%"
      end




    end
    