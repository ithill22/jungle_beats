require './lib/node.rb'

class LinkedList
  
  attr_accessor :head, :count

  def initialize
    @head = head
    @count = 0
  end

  def append(data)
    current_node = Node.new(data)
    if @head.nil?
      @count += 1
      @head = current_node
    elsif data != current_node && current_node.next_node.nil?
      @count += 1
      @head.append(data)
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
