require 'bank_account'

describe Account do 
    let(:account_log)  { double :account_log}

    describe '#deposit' do
      it 'increases account balance by £100 when £100 is deposited' do
       
        subject.deposit(100)
        expect(subject.balance).to eq(100)
      end
    end

    describe '#withdraw' do
      it 'decreases balance by £100 when £100 is withdrawn' do
        
        subject.deposit(200)
        subject.withdraw(100)
        expect(subject.balance).to eq(100)
      end

      it 'throws an error if balance goes below 0' do 

        expect{subject.withdraw(100, '06/10/2020')}.to raise_error "balance can't go below £0" 
      end
    end

    
end

