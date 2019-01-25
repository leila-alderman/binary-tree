class Node
    attr_accessor :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = [nil, nil]
    end
end

class Tree
    attr_accessor :root

    def initialize
        @root = nil
    end

    def build_tree(arr)
        arr.each do |val|
            if @root.nil?
                @root = Node.new(val)
            else
                place_node(val)
            end
        end
    end

    def breadth_first_search(val)
        queue = [@root]
        until queue.empty?
            current_node = queue.shift
            queue.push(current_node.children[0]) if !current_node.children[0].nil?
            queue.push(current_node.children[1]) if !current_node.children[1].nil?
            return current_node if current_node.value == val
        end
        return nil
    end

    def depth_first_search_stack(val)
        stack = [@root]
        until stack.empty?
            current_node = stack.pop
            stack.push(current_node.children[0]) if !current_node.children[0].nil?
            stack.push(current_node.children[1]) if !current_node.children[1].nil?
            return current_node if current_node.value == val
        end
        return nil
    end

    def depth_first_search(val, node = @root)
        return if node.nil?
        if node.value == val
            return node 
        elsif val < node.value
            depth_first_search(val, node.children[0])
        else
            depth_first_search(val, node.children[1])
        end
    end

    private
    def place_node(val, parent = @root)
        if val < parent.value
            if parent.children[0].nil?
                new_node = Node.new(val)
                new_node.parent = parent
                parent.children[0] = new_node
            else
                place_node(val, parent.children[0])
            end
        else
            if parent.children[1].nil?
                new_node = Node.new(val)
                new_node.parent = parent
                parent.children[1] = new_node
            else
                place_node(val, parent.children[1])
            end
        end
    end
                



end


    