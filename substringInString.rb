dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, array)

  hash = {}
  strings_array = string.split(" ")

  array.each do |item|

    strings_array.each do |item2|

      if item2.downcase.include?(item.downcase)

        if hash.any? {|key, value| key == item}
        hash[item] +=1
        else
          hash[item] = 1

        end
      end
    end
  end
hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)