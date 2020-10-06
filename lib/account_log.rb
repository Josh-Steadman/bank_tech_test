
class AccountLog 

    def initialize
        @account_log = []
    end

    def view
        puts @account_log
        @account_log.each do |transaction| puts 'date    || credit || debit || balance' "\n" "#{transaction[:date]} ||  #{transaction[:deposit]}    || #{transaction[:withdraw]}      || #{transaction[:balance]}"  end
        # date = Time.new()
        # p date.strftime("%Y-%m-%d") 
    end

    def log_deposit(sum, date, balance)
        @account_log.push({:date => date, :deposit => sum, :balance => balance})
    end

    def log_withdraw(sum, date, balance)
        @account_log.push({:date => date, :withdraw => sum, :balance => balance})
    end

end