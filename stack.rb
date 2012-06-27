require 'rspec'

class Stack
  def initialize(*elements)
    @elements = elements
  end

  def empty?
    @elements.empty?
  end

  def size
    @elements.size
  end
end

describe Stack do 
  describe '#empty?' do
    context 'empty' do
      its(:empty?){ should be_true }
    end
    context 'not empty' do
      let(:stack){ Stack.new(1) }
      subject { stack }
      its(:empty?){ should be_false }
    end
  end
  describe '#size' do
    context 'when stack is empty' do
      its(:size) { should == 0 }
    end
    context 'when stack is not empty' do
      context 'stack size is 1' do
        let(:stack){ Stack.new(1) }
        subject { stack }
        its(:size){ should == 1 }
      end
      context 'stack size is 2' do
        let(:stack){ Stack.new(1, 2) }
        subject { stack }
        its(:size){ should == 2 }
      end 
    end
  end
end