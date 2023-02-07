require './lib/node.rb'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = head
    @count = 0
  end

  def append(data)
    current_node = @head
    if @head.nil?
      @count += 1
      @head = Node.new(data)
    else 
      new_node = @head
      while(!new_node.next_node.nil?)
        new_node = new_node.next_node
      end
      new_node.next_node = Node.new(data)
    end
  end

  def to_string
    current = @head
    @array = []
    if current
      @array << current.data
      until current.next_node.nil?
        current = current.next_node
        @array << current.data
      end
      @array.join(' ')
    
    end
  end
end
