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
  returnArray = []
  index = array.length
  i = 0
  while i < array.length
    returnArray << array[index - 1]
    i += 1
    index -= 1
  end
  returnArray
end

def kesha_maker(array)
  returnArray = []
  splitWord = []
  array.each do |element|
    splitWord = element.split("")
    splitWord[2] = "$"
    splitWord = splitWord.join("")
    returnArray << splitWord
  end
  returnArray
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
  returnArray = []
  array.each do |element|
    if element == "feet"
      returnArray << element
    else
      returnArray << element + "s"
    end
  end
  returnArray
end
