class BinarySearchTree
    def initialize(array=nil)
        @array = array
        @root = nil
        build_tree(@array)
    end

    def build_tree(array)
        counter = 0
        while counter <= array.length do
            node = Node.new
            current = node
            next_node = node.child
            previous_node = node.parent
            node.value = array[counter]
            if counter == 0
                @root = node
                
            else
            end
            counter += 1
        end
    end

end