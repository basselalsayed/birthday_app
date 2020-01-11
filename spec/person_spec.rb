require 'person'

describe Person do 
  let(:subject) { described_class.new('tom', 16, 'march') }

  describe '#initialization' do 
    it { expect(subject.name).to eq 'tom' }
    it { expect(subject.day).to eq 16 }
    it { expect(subject.month).to eq 'march' }
  end
end
