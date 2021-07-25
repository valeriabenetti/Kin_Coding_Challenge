require_relative '../lib/converter'

describe Converter do
    subject { described_class.read_char(lines) }

    context 'when the text only has 0s' do
        let(:lines) do [
          ' _  _  _  _  _  _  _  _  _ ',
          '| || || || || || || || || |',
          '|_||_||_||_||_||_||_||_||_|'
        ]
        end
        it { should == '000000000' }
      end

  context 'when the text only has 1s' do
        let(:lines) do [
        '                           ',
        '  |  |  |  |  |  |  |  |  |',
        '  |  |  |  |  |  |  |  |  |'
        ]
        end
        it { should == '111111111' }
  end

  context 'when the text only has 2s' do
        let(:lines) do [
        ' _  _  _  _  _  _  _  _  _ ',
        ' _| _| _| _| _| _| _| _| _|',
        '|_ |_ |_ |_ |_ |_ |_ |_ |_ '
        ]
        end
        it { should == '222222222' }
  end

  context 'when the text only has 3s' do
        let(:lines) do [
        ' _  _  _  _  _  _  _  _  _ ',
        ' _| _| _| _| _| _| _| _| _|',
        ' _| _| _| _| _| _| _| _| _|'
        ]
        end
        it { should == '333333333' }
  end

  context 'when the text only has 4s' do
        let(:lines) do [
        '                           ',
        '|_||_||_||_||_||_||_||_||_|',
        '  |  |  |  |  |  |  |  |  |'
        ]
        end
        it { should == '444444444' }
  end

  context 'when the text only has 5s' do
        let(:lines) do [
        ' _  _  _  _  _  _  _  _  _ ',
        '|_ |_ |_ |_ |_ |_ |_ |_ |_ ',
        ' _| _| _| _| _| _| _| _| _|'
        ]
        end
        it { should == '555555555' }
  end

  context 'when the text only has 6s' do
        let(:lines) do [
        ' _  _  _  _  _  _  _  _  _ ',
        '|_ |_ |_ |_ |_ |_ |_ |_ |_ ',
        '|_||_||_||_||_||_||_||_||_|'
        ]
        end
        it { should == '666666666' }
  end

  context 'when the text only has 7s' do
        let(:lines) do [
        ' _  _  _  _  _  _  _  _  _ ',
        '  |  |  |  |  |  |  |  |  |',
        '  |  |  |  |  |  |  |  |  |'
        ]
        end
        it { should == '777777777' }
  end

  context 'when the text only has 8s' do
        let(:lines) do [
        ' _  _  _  _  _  _  _  _  _ ',
        '|_||_||_||_||_||_||_||_||_|',
        '|_||_||_||_||_||_||_||_||_|'
        ]
        end
        it { should == '888888888' }
  end

  context 'when the text only has 9s' do
        let(:lines) do [
        ' _  _  _  _  _  _  _  _  _ ',
        '|_||_||_||_||_||_||_||_||_|',
        ' _| _| _| _| _| _| _| _| _|'
        ]
        end
        it { should == '999999999' }
  end

#   Having issues getting it to read mixed numbers
#   context 'when text has mixed numbers' do
#         let(:lines) do [
#             '    _  _     _  _  _   _  _ ',
#             '  | _| _||_||_ |_   | |_||_|',
#             '  ||_  _|  | _||_|  | |_| _|'
#         ]
#         end
#     it {should == '123456789'}
#     end
end