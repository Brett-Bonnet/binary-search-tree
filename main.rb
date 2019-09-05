    
require './lib/node.rb'
require './lib/binary_search_tree.rb'

array = [100, 200, 300, 150, 250, 5000, 100, 10, 3, 5, 6000]

new_tree = BinarySearchTree.new(array)

puts new_tree.breadth_first_search(5000)
puts new_tree.depth_first_search(5)
puts new_tree.dfs_rec(150)



