require 'person'

describe Person do 
  let(:subject) { described_class.new('tom', 20, 1) }

  describe '#initialization' do 
    it { expect(subject.name).to eq 'tom' }
  end

  describe 'CURRENT_YEAR' do 
    it { expect(Person::CURRENT_YEAR).to eq 2020 }
  end

  describe '#birthday' do 
    it { expect(subject.birthday).to eq 20 }
  end

  describe '#days_until_birthday' do 
    it { expect(subject.days_until_birthday(11)). to eq 9 }
  end

  describe '#birthday_today?' do 
    it { expect(subject.birthday_today?(11)).to eq false }
    it { expect(subject.birthday_today?(20)).to eq true }
  end


end
