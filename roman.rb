def roman(n)
  result = ""

  {"L" => 50,"X" => 10,"V" => 5,"I" => 1}.each do |letter, number|
    result += letter * (n/number)
  	n = n%number
  end	
  result
end

require "minitest/spec"
require "minitest/autorun"

describe "roman" do
  it "converts the number 1 to the string I" do
    roman(1).must_equal "I"
  end
  it "converts the number 2 to the string II" do
  	roman(2).must_equal "II"
  end
  it "convert the number 3 to the string III" do
  	roman(3).must_equal "III"
  end
  it "convert the number 4 to the string IIII" do
  	roman(4).must_equal "IIII"
  end
  it "converts the number 5 to the string V" do
  	roman(5).must_equal "V"
  end 	
  it "converts the number 6 to the string VI" do
  	roman(6).must_equal "VI"
  end
  it "converts the number 10 to the string X" do
  	roman(10).must_equal "X"
  end
  it "converts the number 9 to the string IX" do
  	roman(9).must_equal "VIIII"
  end
  it "converts the number 37 to the string XXXVII" do
  	roman(37).must_equal "XXXVII"
  end	
  it "converts the number 50 to the string L" do
  	roman(50).must_equal "L"
  end	
end
