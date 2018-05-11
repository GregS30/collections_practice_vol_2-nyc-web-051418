 require 'pry'

def begins_with_r(ar)
# return true if every element array starts with an "r"
#   and false otherwise.

  if ar.size == 0
    return false
  end

  ar.each do |x|
    if x[0] != "r"
      return false
    end
  end

  true

end

def contain_a(ar)
#  return all elements that contain the letter 'a'

  if ar.size == 0
    return false
  end

  new_ar = []
  i = 0

  ar.each do |x|
    if x.include?("a") == true
        new_ar[i] = x
        i = i + 1
    end
  end

  new_ar

end

def first_wa(ar)
# return the first element that begins with the letters 'wa'

  if ar.size == 0
    return nil
  end

  ar.each do |x|
    if x[0] == 'w' and x[1] == "a"
      return x
    end
  end
  nil
end

def remove_non_strings(ar)
# remove anything that's not a string from an array

  ar.select! {|x| x.is_a?(String)}

end

def count_elements(ar)
#  count how many times something appears in an array

#  new_ar = [{:name=>"blake", :count=>2}, {:name=>"ashley", :count=>1}]

  names = []
  counts = []
  new_ar = []

  ar.each do |x|
    i = names.index(x)
    if i == nil
      names.push(x)
      counts.push(1)
    else
      counts[i] += 1
    end
  end

  i = 0
  names.each do |x, y|
    x.merge!({count: counts[i]})
    i+=1
  end

  names

end

def merge_data(keys, data)
  new_ar = []

  keys.each_with_index do |item, index|
    new_ar << item
    new_ar[index].merge!(data[0][item[:first_name]])
  end
  new_ar
end

def find_cool(cool)

  ar = []

  cool.each do |x|
    x.each do |item, value|
      if value == "cool"
        ar << x
        return ar
      end
    end
  end
end

def organize_schools(schools)

  schools =
  {"flatiron school bk"=>{:location=>"NYC"},
   "flatiron school"=>{:location=>"NYC"},
   "dev boot camp"=>{:location=>"SF"},
   "dev boot camp chicago"=>{:location=>"Chicago"},
   "general assembly"=>{:location=>"NYC"},
   "Hack Reactor"=>{:location=>"SF"}}

#   binding.pry
   new_schools = {}

   schools.each do |item, value|

     if new_schools.include?(value[:location])
       new_schools[value[:location]] << item

     else
       new_schools[value[:location]] = [item]
     end
    end

    new_schools
end
