class MyStack

  attr_accessor :store

  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(val)
    @store.push(val)
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end


end
