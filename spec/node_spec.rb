require 'rspec'
require './lib/node'

RSpec.describe Node do
  it 'exists' do
    node = Node.new('plop')

    expect(node).to be_a Node
  end

  it 'has data' do
    node = Node.new('plop')

    expect(node.data).to eq('plop')
  end

  it 'has next_node' do
    node = Node.new('plop')
    node.next_node

    expect(node.next_node).to eq(nil)
  end

  it 'can add node to next_node' do
    node = Node.new('plop')

    new_node = node.append('deep')

    expect(node.next_node).to eq new_node
  end
end