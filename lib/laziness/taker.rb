class Taker

  def initialize(source, n)
    @source = source
    @n = n
  end

  def each
    @source.each_with_index do |value, index|
      break if index >= @n
      yield value
    end
  end

  include Enumerable

end

module Enumerable

  def taking(n)
    Taker.new(self, n)
  end

end
