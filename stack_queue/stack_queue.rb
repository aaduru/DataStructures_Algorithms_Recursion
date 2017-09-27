require_relative "my_stack"

class StackQueue

  def initialize
    @store = MyStack.new
    @temp = MyStack.new
  end

  def enqueue(el)
    @temp.push(el)
  end

  def dequeue
    queueify if @store.empty?
  end

  def empty?
    @store.empty? && @temp.empty?
  end

  def size
    @store.size + @temp.size
  end

  protected

  def queueify
    #reversing the stack
    @store.push(@temp.pop) until @temp.empty?
  end
end
