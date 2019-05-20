# your code goes here

def begins_with_r(array)
  array.each do |tool|
    if tool[0] != "r"
      return false 
    end 
  end
  return true 
end

def contain_a(array)
  new = []
  array.collect do |x|
    if x.include?("a")
      new.push(x)
    end 
  end
  new 
end 

def first_wa(array)
  array.each do |x|
    if x[0..1] == "wa"
      return x
    end 
  end 
end 

def remove_non_strings(array)
  new = []
  array.each do |x|
    if x.class == String 
      new.push(x)
    end 
  end 
  new
end 

def find_cool(array)
  cool = []
  array.each do |person|
    person.each do |attribute, value|
      if value == "cool"
        cool.push(person)
      end 
    end 
  end 
  cool 
end 

    






require 'pry'

def count_elements(array)
  counts = []
  array.each do |x|
   number = array.count(x)
   hash = {x, :count => number}
   counts.push(hash)
  end
  counts 
  binding.pry
end 
    



