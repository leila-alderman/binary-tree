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
            end
            place_node(val)
        end
    end

    private
    def place_node(val, parent = @root)
        if val <= parent.value
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


    