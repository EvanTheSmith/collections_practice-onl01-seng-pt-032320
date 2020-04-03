# sort by ascending order
def sort_array_asc(array)
  array.sort
end

# sort by descending order
def sort_array_desc(array)
  array.sort do |a,b|
    if a == b
      0
    elsif a < b
      1
    elsif a > b
      -1
    end
  end
end

# sort by char count
def sort_array_char_count(array)
  array.sort do |a,b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end

# swap elements
def swap_elements(array)
  first = array.pop
  second = array.pop
  array << first
  array << second
end

# reverse array
def reverse_array(array)
  array.reverse
end

# kesha maker
def kesha_maker(array)
  new_array = []
  array.each do |name|
    kesha = name.split("")
    kesha.delete_at(2)
    kesha.insert(2,"$")
    kesha.join
    new_array << kesha
  end
  new_array
end