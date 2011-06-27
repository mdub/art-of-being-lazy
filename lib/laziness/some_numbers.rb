class SomeNumbers

  # declare one method
  
  def each
    yield 0
    yield 1
    yield 1
    yield 2
    yield 3
    yield 5
    yield 8
  end

  # mix in a bunch more
  
  include Enumerable
  
end
