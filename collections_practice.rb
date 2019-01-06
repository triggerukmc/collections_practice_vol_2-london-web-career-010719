require "pry"

def begins_with_r(array)
  array.each {|x| return false if x.start_with?("r") == false}
  return true
end

def contain_a(array)
  a = []
  array.each {|x| if x.include?("a") == true
    a << x
  end
  }
  a
end

def first_wa(array)
  array.collect {|x| return x if x.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if { |x| !(x.is_a? String) }
end

def count_elements(array)
  i = Hash.new(0)
  array.each {|element| i[element] += 1}
  count = []
  i.each do |element, num|
    element.each do |key, value|
      count << {key => value, :count => num}
    end
  end
  count
end
 

def merge_data(keys, data)
  merged = []
  data.each do |array|
    array.each do |name, info|
      keys.each do |key|
        merged << key.merge(info) if key.values[0] == name
      end
    end
  end
  merged
end

def find_cool(array)
  cool = []
  array.each do |x|
    x.each {|key, value| cool << x if key == :temperature && value == "cool" }
  end
  cool
end

def organize_schools(array)
  schools = {}
  array.each do |school,location|
    if schools.has_key?(location[:location])
      schools[location[:location]]<<[school]
    else
      schools[location[:location]]=[school]
    end
  end
  schools.each {|key,value| value.flatten!}
  schools
end



