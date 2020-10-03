# frozen_string_literal: true

RSpec.describe Morseficator::WordEncoder do
  subject { described_class.encode(word) }

  let(:word) { 'AB' }

  it 'returns encoded letters joined by a separator' do
    expect(subject).to eq('.-|-...')
  end

  context 'when word is empty' do
    let(:word) { '' }

    it { is_expected.to eq('') }
  end
end
