require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_a LinkedList
    expect(list.head).to eq(nil)
  end

  it 'appends data' do
    list = LinkedList.new
    
    list.append('doop')

    expect(list.head.data).to eq('doop')
  end

  # it 'can count' do
  #   list = LinkedList.new

  #   list.append('doop')

  #   expect(list.count).to eq(1)
  # end

  # it 'can make a list' do
  #   list = LinkedList.new

  #   list.append('doop')

  #   expect(list.to_string).to eq('doop')
  # end

  # it 'changes data' do
  #   list = LinkedList.new
    
  #   list.append('doop')
  #   list.append('deep')

  #  expect(list.head).to eq('doop')
  #  expect(list.head.next_node).to eq('deep')
  # end
end