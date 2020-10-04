RSpec.describe Morseficator::Input do
  subject { described_class.build(text: text, file: file) }

  let(:text) { nil }
  let(:file) { nil }

  context 'when using text' do
    let(:text) { 'asd' }

    it { is_expected.to be_a(Morseficator::Input::String) }
  end

  context 'when using file' do
    let(:file) { 'asd' }

    it { is_expected.to be_a(Morseficator::Input::File) }
  end

  context 'when using both' do
    let(:text) { 'asd' }
    let(:file) { 'asd' }

    it 'raises an error' do
      expect { subject }.to raise_error(
        Morseficator::Input::Error, 'Chose either text or file input'
      )
    end
  end

  context 'when using none' do
    it 'raises an error' do
      expect { subject }.to raise_error(
        Morseficator::Input::Error, 'Missing an input'
      )
    end
  end
end
