require_relative "min_max_stack"

class MinMaxStackQueue

  def initialize
    @temp = MinMaxStack.new
    @store = MinMaxStack.new
  end

  def enqueue(val)
    @temp.push(val)
  end

  def dequeue
    queueify if @store.empty?
    @store.pop
  end

  def min
    min_array = []
    min_array << @temp.min unless @temp.empty?
    min_array << @store.min unless @store.empty?
    min_array.min

  end

  def max
    max_array = []

    max_array << @temp.max unless @temp.empty?
    max_array << @store.max unless @store.empty?
    max_array.max

  end

  def size
    @store.size + @temp.size
  end
  private

  def queueify
    @store.push(@temp.pop) until @temp.empty

  end

end
