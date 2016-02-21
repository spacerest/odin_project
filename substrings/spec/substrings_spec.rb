require 'spec_helper'
require 'substrings'

describe Substring do
  let(:substring) {Substring.new}

  it "matches a single character" do
    expect(substring.substrings("x",["x"])).to include("x" => 1)
  end
  
  it "matches two different characters" do
    expect(substring.substrings("xy",["x","y"])).to include("x" => 1, "y" => 1)
  end

  it "matches two different characters independently and together" do
    expect(substring.substrings("xy",["x","y","xy"])).to include("x" => 1, "y" => 1, "xy" => 1)
  end

  it "has unmatchable dictionary entries" do
    expect(substring.substrings("x",["y"])).not_to include("y" => 1)
  end

  it "matches uppercase and lowercase characters" do
    expect(substring.substrings("X",["x"])).to include("x" => 1)
  end

  it "matches the same character split up by others" do
    expect(substring.substrings("xyx",["x","y"])).to include("x" => 2, "y" => 1)
  end

  
end
