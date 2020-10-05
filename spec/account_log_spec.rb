require 'account_log'

describe AccountLog do
let(:account) { double :account }

    describe '#log_deposit' do
      it 'saves all deposits' do
        subject.log_deposit(100)
        expect(subject.view).to eq({:deposit => 100})
      end
    end

end
