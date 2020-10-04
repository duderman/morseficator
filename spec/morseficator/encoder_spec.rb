# frozen_string_literal: true

require 'tempfile'

RSpec.describe Morseficator::Encoder do
  subject { described_class.encode(input) }

  let(:input) { Morseficator::Input::String.new("AS D\nA SD") }

  it { is_expected.to eq("1a|3/a2\n1a/3|a2") }

  context 'when using file input' do
    let(:input) { Morseficator::Input::File.new(file) }
    let(:file) { Tempfile.new('asd') }

    before { file.write('asd') && file.rewind }

    it { is_expected.to eq("1a|3|a2") }
  end
end
