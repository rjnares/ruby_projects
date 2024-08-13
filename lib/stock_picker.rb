def stock_picker(stock_prices)
  buy_day = 0
  max_profit = 0
  result = [-1, -1]

  stock_prices.each_index do |curr_day|
    curr_profit = stock_prices[curr_day] - stock_prices[buy_day]
    
    if curr_profit < 0
      buy_day = curr_day
    elsif max_profit < curr_profit
      max_profit = curr_profit
      result = [buy_day, curr_day]
    end

  end

  result
end


p stock_picker([17,3,6,9,15,8,6,1,10]) # Expect: [1, 4]
p stock_picker([7,1,5,3,6,4]) # Expect: [1, 4]
p stock_picker([7,6,4,3,1]) # Expect: [-1, -1]