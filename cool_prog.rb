class Bin_Tree
  class Node

    def initialuze (value, left = nil, right = nil)
      @value = value
      @left = left
      @right = right
    end

    def insert(value)
      if value>=@value then
        if @right.nil?
           @right = Node.new(value)
        else 
          @right.insert(value)
        end
      else
        if @left.nil?
           @left = Node.new(value)
        else 
          @left.insert(value)
        end
      end
    end

    def traverse(&a)
      @left.travel(&a) if @left
      a.call(self)
      @right.travel(&a) if @right
    end
  end
end

def bin_tree(a)
  tree = Bin_Tree.new
  a.each do |i|
    tree.insert(i)
  end
  sorted_array = []
  tree.traverse do |node|
    sorted_array << node.value
  end
end

bin_tree( [2,0,12,112,9,3,2,2,2,0,-875] )

