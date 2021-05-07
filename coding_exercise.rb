def count_pos_sum_neg(arr)
    if arr.length > 0
        positives = arr.select{|num| num > 0 }
        negatives = arr.select{|num| num < 0 }

        return [positives.count, negatives.sum]
    else
        return []
    end

end

print count_pos_sum_neg([])
puts "\n"