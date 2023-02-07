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
end