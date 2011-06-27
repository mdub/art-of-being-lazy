require 'spec_helper'

require 'laziness/selector'

describe Selector do

  it "selects stuff" do
    array = [1,2,3,4]
    selector = Selector.new(array, &:even?)
    selector.to_a.should == [2, 4]
  end
  
end

describe Enumerable, "#selecting" do

  it "selects stuff" do
    array = [1,2,3,4]
    array.selecting(&:even?).to_a.should == [2, 4]
  end
  
end
