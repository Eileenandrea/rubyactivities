#1
new_array = [1,2,3,4,5,6,7,8,9,10]
new_array.each{|n| print "#{n}"}
#2
new_hash ={a:1,b:2,c:3,d:4}
print "\n #{new_hash[:b]}"
new_hash[:e]=5
print "\n #{new_hash} \n"

#3
contact_data= [["ana@email.com","123 Main St", "555-123-4567"],["avion@email","404 Not Found Dr.","123-234-3454"]]

contacts = {"Analyn Cajocson"=>{}, "Avion School"=>{}}
data = ["email","address","phone"]
contact_data[0].each_with_index{|val,index| contacts["Analyn Cajocson"][data[index]] = val };

contact_data[1].each_with_index{|val,index| contacts["Avion School"][data[index]] = val };


print "#{contacts}"
#4
print "\n How old are you? "
age = gets

arr_year = [10,20,30,40];

arr_year.each{|n| print "\n In "; print "#{n}"; print "years you will be "; print "#{n+age.to_f} \n"}