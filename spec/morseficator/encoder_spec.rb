# frozen_string_literal: true

RSpec.describe Morseficator::Encoder do
  subject { described_class.encode(input, output) }

  let(:input) { Morseficator::StringInput.new("AS D\nA SD") }
  let(:output) { StringIO.new }

  it 'prints encoded input to output' do
    subject
    expect(output.string).to eq("1a|3/a2\n1a/3|a2\n")
  end
end
