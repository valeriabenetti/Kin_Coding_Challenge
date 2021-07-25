require_relative '../lib/policy_ocr'
require 'tempfile'



describe PolicyOcr do
  it "loads" do
    expect(PolicyOcr).to be_a Module
  end

  # Note to self - Remember to always test in to root file not in the spec file
  it 'loads the sample.txt' do
    expect(fixture('sample').lines.count).to eq(44)
  end
end

# Creating new PolicyOcr Test
# describe PolicyOcr do
#   # Moved subject out and make it, it's own constant for eatch context
#   subject {
#     Tempfile.open('numbers.txt') do |f|
#       populate_files.(f)
#       f.close
#       PolicyOcr.read_file(f.path, &account_numbers)
#     end
#   }

#   context 'read an empty file' do
#     let(:populate_files) {->(file){}}

#     context 'shoudl call the account number' do
#       let(:account_numbers) { -> (acct_num_or_nil) {raise 'Has to be called'} }
#       it 'throws error' do
#         expect{subject}.to raise_error
#       end
#     end

#     context 'should be a nil when it reaches end of file' do
#       let(:account_numbers) { -> (acct_num_or_nil) {acct_num_or_nil.should be_nil}}
#       it {subject}
#     end
#   end

#   context 'have it read and empty file' do
#     let(:space) { ' ' }
#     let(:line_end) {"\n"}
#     let(:line) {space + line_end }
#     let(:accumulator) { [] }
#     let(:account_numbers) { -> (lines) { accumulator << lines } }
#     let(:populate_files) { ->(file) { file.write line * 8 } }

#     before { subject }

#     it 'passes lines in groups of 3 to the account number parser, leaving off the blank line' do
#       accumulator.should == [[space, space, space], [space, space, space], nil]
#     end
#   end
# end


# describe PolicyOcr do
#   subject {
#     File.open('/fixtures/sample.txt') do |f|
#       populate_files.(f)
#       f.close
#       PolicyOcr.read_file(f.path, &account_numbers)
#     end
#   }

#   context 'can read the file' do
    
#   end
# end


# Having trouble trying to get it to read the file
# Need to look up how to get rspec to open and read what is in the file
# describe 'grabbing the sample file and reading the numbers' do
#   let(:path) {File.open("/fixtures/sample.txt")}
#   let(:converted_acct_numb) {['000000000', '111111111', '222222222',
#     '333333333', '444444444', '555555555',
#     '666666666', '777777777', '888888888',
#     '999999999', '123456789']}
#   subject {described_class.get_accounts(path)}
#   it {should == converted_acct_numb}
# end

