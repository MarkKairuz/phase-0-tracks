def add_to_array(array,a)
  array+[a]
end
​
def build_array(a,b,c)
  [a,b,c]
end
​
array=[]
x=array
p x
​
array.push("item1", "item2", "item3", "item4", "item5")
p array
​
array.delete_at(2)
p array
​
x.insert(2, "new_item")
p x
​
x.shift
p x
​
puts "Includes item2?"
p x.include?("item2")
​
array1=["one", "two", 1, 2,3]
​
y=array+array1
p y
​
p build_array(1, "two", nil)
​
p add_to_array(["c","b"],1)
p add_to_array(["c",1,5,true,false],nil)
p add_to_array(["hello","bye",27,false,true],"r")
