
class AccountLog 

    def initialize
        @account_log = []
    end

    def view
        puts 'date        || credit || debit || balance'
        i = @account_log.length - 1
        while i >= 0 do
            puts "#{@account_log[i][:date]} ||  #{@account_log[i][:deposit]}    ||     #{@account_log[i][:withdraw]}     || #{@account_log[i][:balance]}"
            i -= 1
        end
         
    end

    def log_deposit(sum, date, balance)
        @account_log.push({:date => date, :deposit => sum, :balance => balance})
    end

    def log_withdraw(sum, date, balance)
        @account_log.push({:date => date, :withdraw => sum, :balance => balance})
    end

end