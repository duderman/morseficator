# frozen_string_literal: true

RSpec.describe Morseficator::LineEncoder do
  subject { described_class.encode(line) }

  let(:line) { 'A B' }

  it 'returns encoded letters joined by a separator' do
    expect(subject).to eq('1a/a3')
  end

  context 'when line is empty' do
    let(:line) { '' }

    it { is_expected.to eq('') }
  end
end
