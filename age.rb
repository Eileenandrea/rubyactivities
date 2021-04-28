new_array = [1,2,3,4,5,6,7,8,9,10]
new_array.each{|n| print "#{n}"}
new_hash ={a:1,b:2,c:3,d:4}
print "\n #{new_hash[:b]}"
new_hash[:e]=5
print "\n #{new_hash} \n"

print "How old are you? "
age = gets

arr_year = [10,20,30,40];

arr_year.each{|n| print "\n In "; print "#{n}"; print "years you will be "; print "#{n+age.to_f} \n"}