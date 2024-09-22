# stock_picker
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

This method does the following:
We initialize variables max_profit, best_buy, and best_sell to keep track of the maximum profit, the index of the best buy day, and the index of the best sell day, respectively.
We iterate through each stock price using the each_with_index method, which gives us the price and its corresponding index.
For each buy day, we then iterate through the remaining days (from the buy day + 1 to the last day) to find potential sell days.
We calculate the profit by subtracting the buy day price from the sell day price.
If the current profit is greater than the maximum profit seen so far, we update max_profit, best_buy, and best_sell with the new values.
After iterating through all possible buy and sell combinations, we return an array containing the best_buy and best_sell indices.
This method handles edge cases like when the lowest day is the last day or the highest day is the first day. It will correctly return the best buy and sell days for those cases as well.

This method handles edge cases like when the lowest day is the last day or the highest day is the first day. It will correctly return the best buy and sell days for those cases as well.

stock_picker([17,3,6,9,15,8,6,1,10])  # => [1, 4]
stock_picker([1,2,3,4,5])             # => [0, 4]
stock_picker([5,4,3,2,1])             # => [3, 0]
