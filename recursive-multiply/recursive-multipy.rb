def multiply(a,b)
    return 0 if b==0 
    if b<0
      return -a + multiply(a,b+1)
    else
      return a + multiply(a,b-1)
    end
end

describe "Example" do
    it "should return zero if any num is zero" do
      expect(multiply(0, 5)).to eq(0)
      expect(multiply(0, 0)).to eq(0)
      expect(multiply(5, 0)).to eq(0)
    end
    it "should return the number if multiplied by one" do
      expect(multiply(1, 5)).to eq(5)
      expect(multiply(5, 1)).to eq(5)
      expect(multiply(1, 25)).to eq(25)
    end
    it "should return product of two possitive number" do
      expect(multiply(5, 5)).to eq(25)
      expect(multiply(6, 7)).to eq(42)
      expect(multiply(8, 8)).to eq(64)
    end
    it "should return product of a possitive and negative number" do
      expect(multiply(-5, 5)).to eq(-25)
      expect(multiply(6, -7)).to eq(-42)
      expect(multiply(-8, 8)).to eq(-64)
    end
    it "should return product of 2 negative number" do
      expect(multiply(-5, -5)).to eq(25)
      expect(multiply(-8, -7)).to eq(56)
      expect(multiply(-8, -8)).to eq(64)
    end
  end
  