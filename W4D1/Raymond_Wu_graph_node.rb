
require 'set'

class GraphNode
    attr_reader :value
    attr_accessor :neighbors
    def initialize(value=nil, neighbors=[])
        @value = value
        @neighbors= neighbors
    end
end

def bfs(starting_node, target_value)
    queue = Queue.new
    queue << starting_node
    a_node= starting_node
    searched_nodes = Set.new
    until queue.empty?
        a_node = queue.deq
        if !searched_nodes.include?(a_node)
            if a_node.value == target_value
                return a_node
            end
            searched_nodes.add(a_node)
            a_node.neighbors.each do  |nb|
                queue.enq( nb )
            end
        end
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a,'b')
p bfs(a,'f')
