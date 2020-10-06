require 'account_log'

describe AccountLog do

    describe '#log_deposit' do
      it 'saves a deposit' do
        expect( subject.log_deposit(100, '02/10/2020', 100)).to eq([{:balance=>100, :date=>"02/10/2020", :deposit=>100}])
      end
    end

    describe '#log_withdraw' do
      it 'saves a withdrawall' do
        subject.log_deposit(300, '04/10/2020', 300)
        expect(subject.log_withdraw(200, '05/10/2020', 100)).to eq([{:balance=>300, :date=>"04/10/2020", :deposit=>300},
         {:balance=>100, :date=>"05/10/2020", :withdraw=>200}])
      end
    end

   describe '#view' do
     it 'can view previous transactions' do
       subject.log_deposit(300, '04/10/2020', 300)
       subject.log_withdraw(200, '05/10/2020', 100)
       expect { subject.view }.to output('date        || credit || debit || balance' "\n" '05/10/2020 ||      ||     200     || 100' "\n" '04/10/2020 ||  300    ||          || 300' "\n").to_stdout 
     end
   end

end
