# frozen_string_literal: true

def bubble_sort(array)
  flag = true
  while flag == true
    flag = false
    array.each_with_index do |_element, index|
      next_index = index + 1
      if array[next_index].nil?
        true
      elsif array[index] > array[next_index]
        array[index], array[next_index] = array[next_index], array[index]
        flag = true
      end
    end
  end
  array
end
p bubble_sort([4, 3, 78, 2, 0, 2])
