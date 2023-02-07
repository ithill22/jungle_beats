require './lib/node.rb'

class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
    current_node = @head
    if @head.nil?
      @head = Node.new(data)
    end
  end
end
