# frozen_string_literal: true

RSpec.describe Morseficator::LetterEncoder do
  subject { described_class.encode(letter) }

  let(:letter) { 'A' }

  it 'encrypts a letter using an Encryptor' do
    expect(Morseficator::Encryptor).to receive(:encrypt).with('A').and_call_original
    expect(subject).to eq('1a')
  end

  context 'when letter is in lowercase' do
    let(:letter) { 'a' }

    it { is_expected.to eq('1a') }
  end

  context 'with a number' do
    let(:letter) { 1 }

    it { is_expected.to eq('1d') }
  end
end
