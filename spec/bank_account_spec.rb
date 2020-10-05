require 'bank_account'

describe Account do 

    describe '#deposit' do
      it 'increases account balance by £100 when £100 is deposited' do
        account = Account.new()
        account.deposit(100)
        expect(account.balance).to eq(100)
      end
    end

    describe '#withdraw' do
      it 'decreases balance by £100 when £100 is withdrawn' do
        account = Account.new()
        account.deposit(200)
        account.withdraw(100)
        expect(account.balance).to eq(100)
      end
    end

end

