class StockPicker

  def initialize
    @profit = nil 
    @buy_date = nil
    @sell_date = nil
  end

  def market(price_array)
    @price_array = price_array
    @highest_profit = 0   
    @price_array.each { |day1|
      @price_array.each { |day2|
	@difference = day1 - day2
	if @difference > @highest_profit && @price_array.index(day2) < @price_array.index(day1)
	  @highest_profit = @difference
	  @buy_date = @price_array.index(day2)
	  @sell_date = @price_array.index(day1) 
	end
      }
   }
    if @highest_profit !=0 
      @profit = @highest_profit
      "buy on day #{@buy_date + 1}, sell on day #{@sell_date + 1}"
    else
      "don't buy"
    end
  end 

  def profit
    @profit
  end
end

#for index in price array, find difference between index and all values that are higher and have a greater index
