def stock_picker(array)

    buy = 0
    sell = 0
    profit = 0
    
    array.each_with_index do |element, index|
      if index == -1
    
      else
        array.each_with_index do|element2, index2|
          if index2 == 0 || index2 < index
    
          else
            sum = element2 - element
            if sum > profit
              profit = sum
              buy = index
              sell = index2
            end
          end
        end
      end
    end
    [buy, sell]
    end
    
    puts stock_picker([17,3,6,9,15,8,6,1,10])