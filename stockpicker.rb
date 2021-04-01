def stockpicker(array)
  lowest_price = array[0]
  lowest_day = 0

  profit = 0
  days = [0, 0]
  array.each_with_index do |price, day|
    if price < lowest_price
      lowest_price = price
      lowest_day = day
      next
    end

    if price - lowest_price > profit
      profit = price - lowest_price
      days = [lowest_day, day]
    end
  end
  puts "Buy on day #{days[0]} and sell on day #{days[1]} for a max profit of #{profit}!"
end

stockpicker([17,3,6,9,15,8,6,1,10])