class Caesar

  def caesar_cipher(string, number_to_shift)
    if string.instance_of? String
      array = string.split('')
      new_array = array.map do |element|
        if element != ' '
          temp_element = element.ord
          if temp_element >= 97 && temp_element <= 122
            temp_element += number_to_shift
            temp_element -= 26 if temp_element > 122
            temp_element.chr
          elsif temp_element >= 65 && temp_element <= 90
            temp_element += number_to_shift
            temp_element -= 26 if temp_element > 90
            temp_element.chr
          end
        else
          temp_element = ' '
        end
      end
      new_array.join
    else
      return "You didn't enter a string" 
    end
  end

end

example = Caesar.new

puts example.caesar_cipher("T", 3)