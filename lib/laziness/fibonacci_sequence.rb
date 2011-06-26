#! /usr/bin/env ruby

class FibonacciSequence
  
  def each
    a = 0
    b = 1
    loop do
      yield a
      a, b = b, a+b
    end
  end
  
  include Enumerable
  
end
