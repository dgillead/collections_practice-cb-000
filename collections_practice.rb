require 'pry'

def sort_array_asc(array)
  array.sort!
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif b < a
      -1
    elsif b > a
      1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length > b.length
      1
    elsif a.length < b.length
      -1
    end
  end
end

def swap_elements(array)
  temp = ""
  temp = array[1]
  array[1] = array[2]
  array[2] = temp
  array
end

def reverse_array(array)
  return_array = []
  index = array.length
  i = 0
  while i < array.length
    return_array << array[index - 1]
    i += 1
    index -= 1
  end
  return_array
end

def kesha_maker(array)
  return_array = []
  split_word = []
  array.each do |element|
    split_word = element.split("")
    split_word[2] = "$"
    split_word = split_word.join("")
    return_array << split_word
  end
  return_array
end

def find_a(array)
  array.select do |element|
    element.start_with?("a")
  end
end

def sum_array(array)
  sum = 0
  array.each do |element|
    sum += element
  end
  sum
end

def add_s(array)
  return_array = []
  array.each do |element|
    if element == "feet"
      return_array << element
    else
      return_array << element + "s"
    end
  end
  return_array
end
