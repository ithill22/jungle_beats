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
    current = @head
    if position <= @count
      (position - 1).times do
        current = current.next_node
      end
    end
    next_node = current.next_node
    node = Node.new(data)

    node.append_node(next_node)
    current.append_node(node)
  end

  def find(position, number)
    current_node = @head
    arr = []
    position.times do
    current_node = current_node.next_node
    end

    number.times do
    arr << current_node.data
    current_node = current_node.next_node
    end

  arr.join [' ']
    
  end
  
end
