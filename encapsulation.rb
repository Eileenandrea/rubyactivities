class BuyLot 

    def initialize(lot_area, price_per_square_meter)
        @lot_area = lot_area
        @price_per_square_meter = price_per_square_meter
    end

    def total_price 
        @lot_area * @price_per_square_meter
    end

end

farmland = BuyLot.new(100,3000)
p farmland.total_price