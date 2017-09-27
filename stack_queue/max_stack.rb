require_relative "my_stack"

class MaxStack

  def initialize
    @store = []
    @max = []
  end

  def pop
    if @store.last == @max.last
      @max.pop
    end
    @store.pop
  end

  def push(el)
    if max.empty? || max.last <= el
      @max.push(el)
    end
    @store.push(el)
  end

  def peek
    @store.last
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

  def max
    @max.last
  end

end
