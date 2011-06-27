class Selector
  
  def initialize(source, &predicate)
    @source = source
    @predicate = predicate
  end
  
  def each
    @source.each do |value|
      yield value if @predicate.call(value)
    end
  end
  
  include Enumerable
  
end

module Enumerable
  
  def selecting(&predicate)
    Selector.new(self, &predicate)
  end
  
end
