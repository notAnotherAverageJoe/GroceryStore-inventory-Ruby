require_relative 'store_inventory'
require_relative 'produce'

class FruitCutting < Produce
    attr_accessor :weekly_count, :exp_date, :cut_style

    def initialize(item, stock, identifier, department, weekly_count= 0, exp_date, cut_style);
        super(item, stock, identifier, department)
        @weekly_count= weekly_count
        @exp_date= exp_date
        @cut_style=cut_style
    end

    def to_s
        super + ", Weekly Count: #{@weekly_count}, Cut Style, #{@cut_style}, Expiration Date: #{@exp_date}"
      end
end