# frozen_string_literal: true
class Caesar_cipher
  def caesar_cipher(string, number_to_shift)
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
    puts new_array.join
  end
end

example = Caesar_cipher.new
example.caesar_cipher('Test Caesar Cipher', 5)