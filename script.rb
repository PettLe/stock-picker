def stock_picker(array)
  array.map do |number|
    p "Uusi kierros alkaa, nyt lähtee nro #{number}"
    array.map do |number2|
      if array.find_index(number2) > array.find_index(number)
        p number2
      end
    end
    #p array.find_index(number)
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  for a profit of $15 - $3 == $12