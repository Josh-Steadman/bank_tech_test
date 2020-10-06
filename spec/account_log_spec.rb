require 'account_log'

describe AccountLog do

    describe '#log_deposit' do
      it 'saves all deposits' do
        subject.log_deposit(100, '02/10/2020', 100)
        expect(subject.view).to eq([{:date => '02/10/2020',:deposit => 100, :balance => 100}])
      end
    end

    describe '#log_withdraw' do
    it 'saves all withdraws' do
      subject.log_deposit(300, '04/10/2020', 300)
      subject.log_withdraw(200, '05/10/2020', 100)
      expect(subject.view).to eq([{:date => '04/10/2020', :deposit => 300, :balance => 300}, {:date => '05/10/2020', :withdraw => 200, :balance => 100}])
    end
  end

end
