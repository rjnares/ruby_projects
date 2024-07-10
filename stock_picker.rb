def stock_picker(stock_prices)
  buy_day = 0
  max_profit = 0
  result = [-1, -1]

  stock_prices.each_with_index do |price, curr_day|
    if price < stock_prices[buy_day]
      buy_day = curr_day
    else
      profit = price - stock_prices[buy_day]
      if profit > max_profit
        max_profit = profit
        result[0] = buy_day
        result[1] = curr_day
      end
    end
  end

  result
end


p stock_picker([17,3,6,9,15,8,6,1,10]) # Expect: [1, 4]
p stock_picker([7,1,5,3,6,4]) # Expect: [1, 4]
p stock_picker([7,6,4,3,1]) # Expect: [-1, -1]