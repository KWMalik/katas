require 'lib/chop'

describe "Binary Chop" do

  it "chop should return -1 if input array is empty" do
    chop(1, []).should be_equal -1
  end

  it "chop should return -1 if input array does not contain specified value" do
    chop(99, [1,2,3,4,5,6,7,100,101,121,131]).should be_equal -1
  end

  it "chop should return index if input array contains specified value" do
    chop(1, [1,2]).should be_equal 0
    chop(2, [1,2]).should be_equal 1
    chop(1, [1,2,3,4,5,6,7,100,101,121,131]).should be_equal 0
    chop(4, [1,2,3,4,5,6,7,100,101,121,131]).should be_equal 3
    chop(100, [1,2,3,4,5,6,7,100,101,121,131]).should be_equal 7
    chop(131, [1,2,3,4,5,6,7,100,101,121,131]).should be_equal 10
  end
  
end