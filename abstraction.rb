class BuyLot 

    def initialize(lenght,width, price_per_square_meter)
        @lenght = lenght 
        @width = width
        @price_per_square_meter = price_per_square_meter

    end

    def lot_area
       lot_area = @lenght * @width
    end

    def selling_price
        lot_area * @price_per_square_meter
    end

    def document_stamp_tax
        selling_price * 0.015
    end

    def transfer_tax
        selling_price * 0.005
    end
    
    def total_price
        selling_price - transfer_tax - document_stamp_tax 
    end



end

farmland = BuyLot.new(10,10,3000)
p farmland.total_price