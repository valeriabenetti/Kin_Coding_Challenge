require_relative '../lib/policy_ocr'
require 'spec_helper'
require 'tempfile'



describe PolicyOcr do
  it "loads" do
    expect(PolicyOcr).to be_a Module
  end

  # Note to self - Remember to always test in to root file not in the spec file
  it 'loads the sample.txt' do
    expect(fixture('sample').lines.count).to eq(44)
  end

  # Have it read the file and equate to the given information
  # it 'reads file and equate to the numbers' do
    # TODO: Read File and have it equate to the numbers in the numbers.rb file
  # end
end


# Creating a different PolicyOcr Test to do the simple nil test 
describe PolicyOcr do
  # Moved subject out and make it, it's own constant for eatch context
  subject {
    Tempfile.open('numbers.txt') do |f|
      populate_files.(f)
      f.close
      PolicyOcr.read_file(f.path, &account_numbers)
    end
  }

  context 'read an empty file' do
    let(:populate_files) {->(file){}}

    context 'shoudl call the account number' do
      let(:account_numbers) { -> (acct_num_or_nil) {raise 'Has to be called'} }
      it 'throws error' do
        expect{subject}.to raise_error
      end
    end

    context 'should be a nil when it reaches end of file' do
      let(:account_numbers) { -> (acct_num_or_nil) {acct_num_or_nil.should be_nil}}
      it {subject}
    end
  end

  context 'have it read and empty file' do
    let(:space) { ' ' }
    let(:line_end) {"\n"}
    let(:line) {space + line_end }
    let(:accumulator) { [] }
    let(:account_numbers) { -> (lines) { accumulator << lines } }
    let(:populate_files) { ->(file) { file.write line * 8 } }

    before { subject }

    it 'should pass the lines in groups of 3 into the number converter, removing blank lines' do
      accumulator.should == [[space, space, space], [space, space, space], nil]
    end
  end
end




