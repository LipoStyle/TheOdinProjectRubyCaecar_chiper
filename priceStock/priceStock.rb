# declaring the method
def stock_picker(stock_prices)
  # declaring the array of income.
  profit_income = []
  max_profit = 0
  # looping through the prices to find the best combinationg of buying and selling 
  stock_prices.each do |b_item|
    for s_item in (stock_prices.index(b_item) .. stock_prices.length - 1)
     prifit = stock_prices[s_item] - b_item
    #  cheking for the profit and if its max we store the days in the array
     if prifit > max_profit
      max_profit = prifit
      profit_income = [stock_prices.index(b_item), s_item]
     end
    end
  end
  # returning the array with the max prifit buy sell day
  return profit_income
end

# calling the method
p stock_picker([17,3,6,9,15,8,6,1,10])
