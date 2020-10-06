require 'bank_account'

describe Account do 
    let(:account_log) { double :account_log}
    

    describe '#deposit' do
      it 'increases account balance by £100 when £100 is deposited' do
       
        subject.deposit(100, '04/10/2020')
        expect(subject.balance).to eq(100)
      end
    end

    describe '#withdraw' do
      it 'decreases balance by £100 when £100 is withdrawn' do
        
        subject.deposit(200, '04/10/2020')
        subject.withdraw(100, '04/10/2020')
        expect(subject.balance).to eq(100)
      end

      it 'throws an error if balance goes below 0' do 

        expect(subject.withdraw(100, '06/10/2020')).to raise_error "balance can't go below £0" 
      end
    end

    describe '#view' do
      it 'can view past transactions' do
        allow(account_log).to receive(:log_deposit).and_return({:date => '04/10/2020', :deposit => 200, :balance => 200})
        allow(account_log).to receive(:view).and_return('date    || credit || debit || balance' "\n" '04/10/2020 ||  200 ||  || 200')
        account = Account.new(account_log)
     
        account.deposit(200, '04/10/2020')
        expect(account.view_statement).to eq('date    || credit || debit || balance' "\n" '04/10/2020 ||  200 ||  || 200')
      end
    end
end

