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
  array.each do |hash|
      hash[:count] = 0
      name = hash[:name]
      array.each do |hash_again|
        if hash_again[:name] == name 
          hash[:count] += 1
        end 
      end
  end.uniq
end 

def merge_data(keys, data)
  keys.each do |hash| 
    data.each do |giant_hash|
      giant_hash.each do |name, info|
        if name == hash[:first_name]
          hash.merge!(info)
        end
      end 
    end 
  end
end 

def organize_schools(schools)
  cities = {}
  schools.each do |school_name, location_info|
    location_info.each do |key, city_name|
      cities[city_name] = []
      schools.each do |school, location|
        location.each do |key, city|
          if city_name == city
            cities[city_name] << school
          end 
        end 
      end
    end 
  end 
  cities 
end 

organize_schools({
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    })


