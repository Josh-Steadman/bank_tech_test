require 'bank_account'

describe Account do 
    
   
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
    end

    

end

