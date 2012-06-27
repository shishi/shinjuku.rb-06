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

  def push(element)
    @elements << element
    nil
  end

  def pop
    @elements.delete_at(-1)
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
  describe '#push' do
    specify do
      expect{subject.push(0)}.to change(subject, :size).by(1) 
    end

    it "should return nil" do
      subject.push(0).should be_nil
    end
  end
  describe '#pop' do
    let(:stack){ Stack.new(1, 2) }
    subject { stack }
    its(:pop){ should == 2 }
    it do
      expect{subject.pop}.to change(subject, :size).by(-1) 
    end
  end
end
