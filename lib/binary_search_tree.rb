class BinarySearchTree
  attr_accessor :root, :tree
  def initialize(array)
        @root = nil
        @tree = self.build_tree(array)
  end

  def build_tree(array)
    array.each do |value|
      insert(value)
    end
  end

  def insert(value)
    @root = append_tree(@root, value)
  end

  def append_tree(root, value)
    node = Node.new
    node.value = value
    if root.nil?
      root = node
    else 
      if root.value < node.value
        root.right_child = append_tree(root.right_child, value)
        root.right_child.parent = root
      else
        root.left_child = append_tree(root.left_child, value)
        root.left_child.parent = root
      end
    end
    return root
  end

  def breadth_first_search(value)
    if self.root.value == value
      self.root
    else
      queue = []
      current = self.root
    until current.nil? || current.value == value do
      queue << current.left_child unless current.left_child.nil?
      queue << current.right_child unless current.right_child.nil?
      current = queue.shift
    end
     return nil if current.nil?
     current.value
    end
  end

  def depth_first_search(value)
    if self.root.value == value
      self.root
    else
      stack = []
      current = self.root
    until current.nil? || current.value == value do
      stack.push(current.right_child) unless current.right_child.nil?
      stack.push(current.left_child) unless current.left_child.nil?
      current = stack.pop
    end
     return nil if current.nil?
     current.value
    end
  end

  def dfs_rec(value, node=self.root)
    current = node
    if current.nil? || current.value == value
      return nil if current.nil?
      current.value
    elsif value < current.value
      dfs_rec(value, current.left_child)
    else dfs_rec(value, current.right_child)
    end
  end


end
