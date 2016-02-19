require 'spec_helper'
require 'stock_picker'

describe StockPicker do
  let(:stock_picker) {StockPicker.new}

  it "shows two days without change" do
    expect(stock_picker.market([1,1])).to eq "don't buy"
    expect(stock_picker.profit).to eq nil 
  end

  it "shows two days with positive change" do
    expect(stock_picker.market([0,1])).to eq "buy on day 1, sell on day 2"
    expect(stock_picker.profit).to eq 1
  end

  it "shows two days with negative change" do
    expect(stock_picker.market([1,0])).to eq "don't buy"
    expect(stock_picker.profit).to eq nil
  end

  it "shows three days with positive change" do
    expect(stock_picker.market([0,1,2])).to eq "buy on day 1, sell on day 3"
    expect(stock_picker.profit).to eq 2
  end

  it "shows three days with max in the middle" do
    expect(stock_picker.market([0,4,0])).to eq "buy on day 1, sell on day 2" 
    expect(stock_picker.profit).to eq 4
  end

  it "shows four days with ultimate max before ultimate min" do
    expect(stock_picker.market([1,4,0,2])).to eq "buy on day 1, sell on day 2"
    expect(stock_picker.profit).to eq 3
  end

end
