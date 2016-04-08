class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)  #If no value is provided, next_node is nil.
		@value = value
		@next_node = next_node
	end
end


class Stack #Does not need to inherit, you can create an instance of a class without inheriting.

    def initialize()
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
    	@data = LinkedListNode.new(value, @data)
    end

    def pop
        if @data == nil
            return "nil"
        else
            value = @data.value    #Getting the value from the last object placed in the stack
            @data = @data.next_node   #Moving deeper into the stack. 
            # now the node that is 2nd last to be placed in is now the last one. 
            #print value
            return value #returning the value from the last object placed in the stack
        end
    end

    def is_empty?
        @data.nil?
    end
end


def print_values(list_node)
	if list_node
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else
		print "nil\n"
		return
	end
end

def reverse_list(stack)
    
    while stack.is_empty? == false
        print "#{stack.pop} --> "
    end
    print "nil\n"
    
    
   
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

stack = Stack.new
stack.push(12)
stack.push(99)
stack.push(37)

#puts "#{stack.pop} --> #{stack.pop} --> #{stack.pop} --> #{stack.pop}"

reverse_list(node3)




