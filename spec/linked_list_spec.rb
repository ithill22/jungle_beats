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

  it 'can count' do
    list = LinkedList.new

    data_a = list.append('doop')

    expect(list.count).to eq(1)
  end

  it 'can make a list' do
    list = LinkedList.new

    data_a = list.append('doop')
    data_b = list.append('deep')
    
    expect(list.head).to eq(data_a)
    expect(list.head.next_node).to eq(data_b)
  end

  it 'can change node to string' do
    list = LinkedList.new

    list.append('doop')

    expect(list.to_string).to eq('doop')
  end 

  it 'can add data to beginning of list' do
    list = LinkedList.new

    list.prepend('boop')
  end

  it 'can insert data into list' do
    list = LinkedList.new

    data_a = list.append('doop')
    data_b = list.append('deep')
    data_c = list.insert(1, 'woo')

    expect(list.to_string).to eq('doop woo deep')

    # expect(list.insert(2, 'woo')).to eq('woo')
  end

end