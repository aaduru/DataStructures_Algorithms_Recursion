class PolyTreeNode
  attr_reader :value, :parent, :children

#initialize(value) method that sets the value, and starts parent as nil, and children to an empty array.
#parent method that returns the node's parent.
#children method that returns an array of children of a node.
#value method that returns the value stored at the node.

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent_node)
    @parent.children.delete(self) unless @parent.nil?
    @parent = parent_node
    unless parent_node.nil? || parent_node.children.include?(self)
      parent_node.children << self
    end
  end

  def add_child(child_node)
    @children << child_node
    child_node.parent = self
  end

  def remove_child(child_node)
    if @children.include?(child_node)
      @children.delete(child_node)
    else
      raise "Not my child"
    end
    child_node.parent = nil
  end

  def bfs(target = nil)
    return nil if target.nil?
    queue = [self]

    until queue.empty?
      current_child = queue.shift
      return current_child if current_child.value == target
      current_child.children.each do |child|
        queue << child
      end
    end
    nil
  end

  def dfs(target = nil)
    return nil if target.nil?
    return self if self.value == target

    @children.each do |child|
      current_child = child.dfs(target)
      return current_child unless current_child.nil?
    end
    nil
  end

end
