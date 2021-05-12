#insert weight and function convert will convert it to kilograms

class Weight
    def initialize(weight)
        @weight = weight
    end
    def convert
        weight, unit = @weight.split
      
        case unit
            when 'kg'
               puts "#{@weight} is #{@weight}"
            when 'ibs'
                puts IbsConvert.new.convert(weight.to_f)
            when 'g'
               puts GramsConvert.new.convert(weight.to_f)
        end
    
    end
end

class IbsConvert
    def convert(weight)
        new_weight_with_unit = (weight / 2.205).to_s + ' kg'
        return "#{weight} Ibs is #{new_weight_with_unit}"
    end
end
class GramsConvert
    def convert(weight)
        new_weight_with_unit = ( weight / 1000).to_s + ' kg'
        return "#{weight} g is #{new_weight_with_unit}"
    end
end

kg_weight = Weight.new('5 kg')
kg_weight.convert
ibs_weight = Weight.new('5 ibs')
ibs_weight.convert
g_weight = Weight.new('5000 g')
g_weight.convert