#insert weight and function convert will convert it to kilograms

class Weight
    def initialize(weight)
        @weight = weight
    end
    def convert
        weight, unit = @weight.split
      
        case unit
            when 'kg'
               new_weight = weight 
               new_weight_with_unit = new_weight + ' kg'
               puts "#{@weight} is #{new_weight_with_unit}"
            when 'ibs'
                new_weight = IbsConvert.new.convert(weight.to_f)
                new_weight_with_unit = new_weight.to_s + ' kg'
               puts "#{@weight} is #{new_weight_with_unit}"
            when 'g'
                new_weight = GramsConvert.new.convert(weight.to_f)
                new_weight_with_unit = new_weight.to_s + ' kg'  
               puts "#{@weight} is #{new_weight_with_unit}"
        end
    
    end
end

class IbsConvert
    def convert(weight)
        weight / 2.205
    end
end
class GramsConvert
    def convert(weight)
        weight / 1000
    end
end

kg_weight = Weight.new('5 kg')
kg_weight.convert
ibs_weight = Weight.new('5 ibs')
ibs_weight.convert
g_weight = Weight.new('5000 g')
g_weight.convert