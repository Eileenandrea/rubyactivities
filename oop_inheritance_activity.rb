class Confection
    def baking
         "Baking at 350 degrees"
    end
end

class Cupcake < Confection
    def baking
        super + " Apply Frosting"
    end

end

class BananaCake < Confection
end


redvelvet_cupcake = Cupcake.new
bananacake = BananaCake.new

puts redvelvet_cupcake.baking
puts bananacake.baking