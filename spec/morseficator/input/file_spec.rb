# frozen_string_literal: true

require 'tempfile'

RSpec.describe Morseficator::Input::File do
  let(:input) { described_class.new(file) }

  describe '.map_lines' do
    subject { input.map_lines }

    let(:file) { Tempfile.new('new') }

    context 'with a valid file' do
      before do
        file.write("asd\ndsa")
        file.rewind
      end

      it 'calls a block with each line' do
        expect { |b| input.map_lines(&b) }.to yield_successive_args('asd', 'dsa')
      end
    end

    shared_examples 'raises an error' do |message|
      specify { expect { subject }.to raise_error(Morseficator::Input::Error, message) }
    end

    context 'with missing file' do
      let(:file) { 'asds' }

      it_behaves_like 'raises an error', "File 'asds' wasn't found"
    end

    context "when app doesn't have permissions to read a file" do
      let(:file) { 'asds' }

      before { allow(File).to receive(:open).and_raise(Errno::EACCES) }

      it_behaves_like 'raises an error', "Don't have access to a file 'asds'"
    end

    context "when file can't be opened" do
      let(:file) { 'asds' }

      before { allow(File).to receive(:open).and_raise('oops') }

      it_behaves_like 'raises an error', "Can't open file 'asds'"
    end
  end
end
