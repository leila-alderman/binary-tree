require "binary_search_tree"

describe "Node" do
	it "initializes a node" do
		node = Node.new(3)
        expect(node.value).to eql(3)
        expect(node.parent).to eql(nil)
		expect(node.children).to eql([nil, nil])
	end
end

describe "Tree" do
    before do
        @tree = Tree.new
    end

    describe "#initialize" do
        it "initializes with nil" do
            expect(@tree.root).to eql(nil)
        end
    end

    describe "#build_tree" do
        before do
            @tree.build_tree([7, 4, 23, 8, 9, 4])
        end

        it "adds the first number as the root node" do
            expect(@tree.root.value).to eql(7)
        end

        it "can be traversed" do
            expect(@tree.root.children[1].value).to eq(23)
        end

        it "can be traversed deeper" do
            expect(@tree.root.children[1].children[0].value).to eql(8)
        end
    end

    describe "#breadth_first_search" do
        before do
            @tree.build_tree([7, 4, 23, 8, 9, 4])
        end
        
        it "works for root" do
            expect(@tree.breadth_first_search(7).value).to eql(7)
            expect(@tree.breadth_first_search(7).parent).to eql(nil)
        end

        it "works for first level" do
            expect(@tree.breadth_first_search(7).value).to eql(7)
            expect(@tree.breadth_first_search(7).parent).to eql(nil)
        end
            
    end
end
