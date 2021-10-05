def caesar_cipher(string, number_to_shift)
  array = string.split("")
    new_array = array.map  do |element|
      if element != " "
      temp_element = element.ord
        if temp_element >=97 && temp_element <=122
          temp_element += number_to_shift
          if temp_element >122 
            temp_element -= 26
            temp_element.chr
          else
            temp_element.chr
          end
        elsif temp_element >= 65 && temp_element <= 90
          temp_element += number_to_shift
          if temp_element > 90
            temp_element -= 26
            temp_element.chr
          else
            temp_element.chr
          end
        end
      else 
        temp_element = " "
      end
    end
  puts new_array.join
end

caesar_cipher("Test Caesar Cipher", 5)