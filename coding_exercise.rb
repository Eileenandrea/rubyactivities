def count_pos_sum_neg(arr)
    positives = arr.select{|num| num > 0 }
    negatives = arr.select{|num| num < 0 }

    return [positives.count, negatives.sum]

end

print count_pos_sum_neg([1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14,-15])
puts "\n"