# frozen_string_literal: true

RSpec.describe Morseficator::Encryptor do
  describe '.encrypt' do
    subject { described_class.encrypt(letter) }

    let(:letter) { 'A' }

    it 'encrypts a letter to a morse code' do
      expect(subject).to eq('1a')
    end

    context 'when letter is empty' do
      let(:letter) { '' }

      it { is_expected.to eq('') }
    end

    shared_examples 'it raises an error' do |message|
      specify { expect { subject }.to raise_error(Morseficator::Error, message) }
    end

    context 'with word as an argument' do
      let(:letter) { 'asd' }

      it_behaves_like 'it raises an error', 'Only single letters are supported'
    end

    context 'when argument is not a string' do
      let(:letter) { [] }

      it_behaves_like 'it raises an error', "Argument isn't a string"
    end

    context 'with unknown letter' do
      let(:letter) { 'ё' }

      it_behaves_like 'it raises an error', "Unkonwn letter 'ё'"
    end
  end
end
