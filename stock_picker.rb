def stock_picker(prices)
  max_profit = 0
  best_buy = 0
  best_sell = 0

  prices.each_with_index do |price, index|
    (index...prices.length).each do |sell_index|
      profit = prices[sell_index] - price
      if profit > max_profit
        max_profit = profit
        best_buy = index
        best_sell = sell_index
      end
    end
  end

  p [best_buy, best_sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
