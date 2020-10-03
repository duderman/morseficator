# frozen_string_literal: true

RSpec.describe Morseficator::Letter do
  let(:letter) { described_class.new('A') }

  before { allow(Morseficator::Morse).to receive(:convert).and_return('.') }

  describe '.encode' do
    subject { letter.encode }

    it 'encodes the letter to morse code' do
      expect(subject).to eq('.')
    end

    it 'does an immutable transformation' do
      expect(subject).not_to eql(letter)
    end

    it 'returns a Letter object' do
      expect(subject).to be_a(described_class)
    end
  end

  describe '.encode!' do
    subject { letter.encode! }

    it 'encodes the letter to morse code' do
      expect(subject).to eq('.')
    end

    it 'does a mutable transformation' do
      expect(subject).to eql(letter)
    end

    it 'returns a Letter object' do
      expect(subject).to be_a(described_class)
    end
  end

  describe '.to_s' do
    subject { letter.to_s }

    it { is_expected.to eq('A') }
  end
end
