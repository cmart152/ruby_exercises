require 'pry-byebug'

class Caesar

  def caesar_cipher(string, number_to_shift)
    if string.instance_of? String
      new_array = string.split('').map do |element|
        element = element.ord
        if (65..90).include?(element.ord)
          element += number_to_shift
          element -= 26 if element > 90
        elsif (97..122).include?(element.ord)
          element += number_to_shift
          element -= 26 if element > 122
        else
          return "You need to enter letters between A-Z and a-z"
        end
        element.chr
      end
      new_array.join
    else
      return "You didn't enter a string" 
    end
  end
end



example = Caesar.new
p example.caesar_cipher('fjgj34', 3)