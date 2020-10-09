require 'bank_account'
require 'account_log'

describe'Account' do

    it 'view statement after depositng money' do
        account = Account.new()
        account.deposit(1000)
        
        expect {account.view_statement}.to output('date        || credit || debit || balance' "\n" "#{Time.new.strftime("%Y-%m-%d")} ||  1000    ||          || 1000" "\n").to_stdout
    end
end


