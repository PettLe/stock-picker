def stock_picker(array)
  all_results = Array.new()
  array.map do |number|
    array.map do |number2|
      if array.find_index(number2) > array.find_index(number)
        all_results.push({:arr => [array.find_index(number), array.find_index(number2)], :profit => number2 - number})
      end
    end
  end
  p "#{all_results.max_by {|item| item[:profit]}[:arr]} for a profit of $#{array[all_results.max_by {|item| item[:profit]}[:arr][1]]} - $#{array[all_results.max_by {|item| item[:profit]}[:arr][0]]} == $#{all_results.max_by {|item| item[:profit]}[:profit]}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  for a profit of $15 - $3 == $12