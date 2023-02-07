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

  def prepend(data)
    @count += 1
    next_node = @head
    @head = Node.new(data)
    @head.append_node(next_node)
  end

  def insert(position, data)
    current_node = head
    previous_node = nil

    position.times do
      previous_node = current_node.next_node
    end
    new_node = Now.new(data)
    if @count == 0
      @head = new_node
    else
      new_node.next_node = current_node
      previous_node.next_node = new_node
    end
    new_node.data
  end
  
  
end
