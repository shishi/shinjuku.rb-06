require 'rspec'

class Stack
  def initialize(*elements)
    @elements = elements
  end

  def empty?
    @elements.empty?
  end
end

describe Stack do 
  context 'empty' do
    its(:empty?){ should be_true }
  end
  context 'not empty' do
    let(:stack){ Stack.new(1) }
    subject { stack }
    its(:empty?){ should be_false }
  end
end