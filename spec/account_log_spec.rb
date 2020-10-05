require 'account_log'

describe AccountLog do
let(:account) { double :account }

    describe '#log_deposit' do
      it 'saves all deposits' do
        subject.log_deposit(100)
        expect(subject.view).to eq([{:deposit => 100}])
      end
    end

    describe '#log_withdraw' do
    it 'saves all withdraws' do
      subject.log_deposit(300)
      subject.log_withdraw(200)
      expect(subject.view).to eq([{:deposit => 300}, {:withdraw => 200}])
    end
  end

end
